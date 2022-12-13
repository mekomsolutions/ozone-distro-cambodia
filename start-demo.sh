#!/usr/bin/env bash
set -e

repoUrl=https://nexus.mekomsolutions.net
serverId=mks-repo-private
repoName=maven-private-snapshots
groupId=net.mekomsolutions
artifactId=ozonepro-docker-compose
version=1.0.0-SNAPSHOT
destinationFolder=./target/${artifactId}-${version}

# Clean
rm -rf ${destinationFolder}
rm -f ${outputFile}

if [[ -z ${NEXUS_USER} || -z ${NEXUS_PASSWORD} ]]
then
	printf "Missing credentials to Nexus repository.\nPlease provide 'NEXUS_USER' and 'NEXUS_PASSWORD' as environment variables"
	exit 1
fi

# Build the distro
mvn clean package

# Download Ozone Pro Docker Compose
./mvnw org.apache.maven.plugins:maven-dependency-plugin:get -DremoteRepositories=${serverId}::::${repoUrl}/repository/${repoName} -Dartifact=${groupId}:${artifactId}:${version}:zip -Dtransitive=false
./mvnw org.apache.maven.plugins:maven-dependency-plugin:unpack -Dproject.basedir=./target/ -Dartifact=${groupId}:${artifactId}:${version}:zip -DoutputDirectory=./target/${artifactId}-${version}


# Concatenate and clean up the env files
sort -u -t '=' -k 1,1 target/resources/ozonepro-docker-compose.env ${destinationFolder}/.env | sed '/^#/d' > ${destinationFolder}/concatenated.env

# Run
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up -d proxy keycloak

exit 0