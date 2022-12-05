#!/usr/bin/env bash

repoUrl=https://nexus.mekomsolutions.net
repoName=maven-private
groupId=net.mekomsolutions
artifactId=ozonepro-docker-compose
outputFile=./target/${artifactId}.zip
destinationFolder=./target/${artifactId}

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

# Download latest Ozone Pro Docker Compose
curl -s -u ${NEXUS_USER}:${NEXUS_PASSWORD} -X GET "${repoUrl}/service/rest/v1/search/assets/download?repository=${repoName}&group=${groupId}&name=${artifactId}&sort=version&maven.extension=zip&sort=version" -L  -H "accept: application/json" --output ${outputFile} && unzip ${outputFile} -d ${destinationFolder}

# Concatenate the env files
cat ${destinationFolder}/.env <(echo) target/resources/ozonepro-docker-compose.env > ${destinationFolder}/concatenated.env

# Run
docker compose -f "./target/${artifactId}/docker-compose.yml" --env-file "./target/${artifactId}/concatenated.env" -p ozone-distro-cambodia up -d openmrs proxy frontend keycloak

exit 0