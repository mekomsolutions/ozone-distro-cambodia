#!/usr/bin/env bash
#
# Helper script to navigate to the Ozone Docker scripts/ directory, which contains commands to run the application
#
# Will be substituted at build time by the Maven Resource plugin filtering.
pushd ${project.build.directory}/${project.artifactId}-${project.version}/run/docker/scripts/
