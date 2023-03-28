#!/usr/bin/env bash
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
printf "%s\n" "Package the distro..."
./mvnw clean package $profileArg
printf "%s\n" "Done."

# Prepare the run (build the run/ Maven project)
printf "%s\n" "Prepare the run..."
./mvnw -f run/pom.xml clean package

# Pull images
printf "%s\n" "Pull..."
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" pull ${servicesToRun}
printf "%s\n" "Done."

# Run
printf "%s\n" "Run..."
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up -d ${servicesToRun}

exit 0