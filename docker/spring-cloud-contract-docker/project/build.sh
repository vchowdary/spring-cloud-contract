#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export PROJECT_NAME="${PROJECT_NAME:-example}"
echo "Setting project name to [${PROJECT_NAME}]"
echo "rootProject.name='${PROJECT_NAME}'" >> settings.gradle
echo "Running the build"
./gradlew clean build publishToMavenLocal publish --stacktrace
