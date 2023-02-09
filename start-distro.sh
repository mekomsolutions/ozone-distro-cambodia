#!/usr/bin/env bash
set -e

repoUrl=https://nexus.mekomsolutions.net
serverId=mks-repo-private
repoName=maven-private
groupId=com.ozonehis
artifactId=ozonepro-docker-compose
version=1.0.0-SNAPSHOT
destinationFolder=./target/${artifactId}-${version}


# Set the profile value if provided
[ -z "$1" ] && profileArg="" || profileArg="-P$1"
 

# Clean
rm -rf ${destinationFolder}
rm -f ${outputFile}

# Build the distro
./mvnw clean package $profileArg

# Download Ozone Pro Docker Compose
./mvnw org.apache.maven.plugins:maven-dependency-plugin:get -DremoteRepositories=${serverId}::::${repoUrl}/repository/${repoName} -Dartifact=${groupId}:${artifactId}:${version}:zip -Dtransitive=false
./mvnw org.apache.maven.plugins:maven-dependency-plugin:unpack -Dproject.basedir=./target/ -Dartifact=${groupId}:${artifactId}:${version}:zip -DoutputDirectory=./target/${artifactId}-${version}


# Concatenate and clean up the env files
sort -u -t '=' -k 1,1 target/resources/ozonepro-docker-compose.env ${destinationFolder}/.env | sed '/^#/d' > ${destinationFolder}/concatenated.env

# update images

# Run
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up --pull -d proxy keycloak superset

exit 0