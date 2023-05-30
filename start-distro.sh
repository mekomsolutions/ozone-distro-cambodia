#!/usr/bin/env bash
export SPA_CONFIG_URLS=/ozone/ozone-frontend-config.json

set -e

ozoneDockerArtifactId=ozone-docker-compose
destinationFolder=./run/target/${ozoneDockerArtifactId}
servicesToRun="proxy openmrs frontend mysql"

# Set the profile value if provided
[ -z "$1" ] && profileArg="" || profileArg="-P$1"

# Clean
rm -rf ${destinationFolder}
rm -f ${outputFile}

# Package the distro
printf "%s\n" "Package and install the distro..."
./mvnw clean install $profileArg
printf "%s\n" "Done."

# Prepare the run (build the run/ Maven project)
printf "%s\n" "Prepare the run..."
./mvnw -f run/pom.xml clean package $profileArg

# Pull images
printf "%s\n" "Pull..."
docker compose -f "${destinationFolder}/docker-compose.yml" -f "${destinationFolder}/docker-compose-proxy.yml" --env-file "${destinationFolder}/concatenated.env" pull ${servicesToRun}
printf "%s\n" "Done."

# Run
printf "%s\n" "Run..."
docker network inspect web >/dev/null 2>&1 || docker network create web
docker compose -f "${destinationFolder}/docker-compose.yml" -f "${destinationFolder}/docker-compose-proxy.yml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up -d ${servicesToRun}

exit 0