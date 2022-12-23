#!/usr/bin/env bash
set -e

repoUrl=https://nexus.mekomsolutions.net
serverId=mks-repo-private
repoName=maven-private
groupId=com.ozonehis
artifactId=ozone-analytics
version=1.0.0-SNAPSHOT
destinationFolder=./target/${artifactId}-${version}

# Clean

# Download Ozone Pro Docker Compose
./mvnw org.apache.maven.plugins:maven-dependency-plugin:get -DremoteRepositories=${serverId}::::${repoUrl}/repository/${repoName} -Dartifact=${groupId}:${artifactId}:${version}:zip -Dtransitive=false
./mvnw org.apache.maven.plugins:maven-dependency-plugin:unpack -Dproject.basedir=./target/ -Dartifact=${groupId}:${artifactId}:${version}:zip -DoutputDirectory=./target/${artifactId}-${version}

# Concatenate and clean up the env files
sort -u -t '=' -k 1,1 target/resources/ozone-analytics.env ${destinationFolder}/.env | sed '/^#/d' > ${destinationFolder}/concatenated.env

# Run
docker compose -f "${destinationFolder}/docker-compose-data-pipelines-external.yaml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up -d

exit 0