#!/usr/bin/env bash
set -e

# Set the profile value if provided
[ -z "$1" ] && profileArg="" || profileArg="-P$1"

# Package the distro
printf "%s\n" "Build the project..."
./scripts/mvnw clean package $profileArg
printf "%s\n" "Done."

# Run base
printf "%s\n" "Run 'base'..."
cd base/
source target/go-to-scripts-dir.sh
./start-demo.sh

printf "%s\n" "Run 'prod'..."
cd prod/
source target/go-to-scripts-dir.sh
./start-demo.sh

exit 0