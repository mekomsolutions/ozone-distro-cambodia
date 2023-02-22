#!/usr/bin/env bash

# Concatenates 2 env files into 1.
sort -u -t '=' -k 1,1 ${project.build.directory}/resources/ozone-docker-compose.env ${project.build.directory}/ozone-docker-compose/.env | sed '/^#/d' > ${project.build.directory}/ozone-docker-compose/concatenated.env