#!/bin/bash
# simple command line tool to create boiler maven project
# -olealgo@2020-

GROUP_ID="com.oalgo"
DEFAULT_PKG="pkg"
ARTIFACT_ID="$GROUP_ID.$DEFAULT_PKG"

read -p "Press ENTER to use \"$GROUP_ID.$DEFAULT_PKG\" or enter new package: $GROUP_ID." userInput

if [[ -n "$userInput" ]];
then
    ARTIFACT_ID="$GROUP_ID.$userInput"
fi

echo ...generating project using $ARTIFACT_ID

mvn archetype:generate -DgroupId=$ARTIFACT_ID -DartifactId=$ARTIFACT_ID -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
