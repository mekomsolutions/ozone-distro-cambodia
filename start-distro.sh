#!/usr/bin/env bash
set -e

destinationFolder=./run/target/${artifactId}
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

# Concatenate and clean up the env files
sort -u -t '=' -k 1,1 run/target/resources/ozone-docker-compose.env ${destinationFolder}/.env | sed '/^#/d' > ${destinationFolder}/concatenated.env
printf "%s\n" "Done."

# Pull images
printf "%s\n" "Pull..."
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" pull ${servicesToRun}
printf "%s\n" "Done."

# Run
printf "%s\n" "Run..."
docker compose -f "${destinationFolder}/docker-compose.yml" --env-file "${destinationFolder}/concatenated.env" -p ozone-distro-cambodia up -d ${servicesToRun}

exit 0