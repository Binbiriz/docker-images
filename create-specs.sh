#!/bin/bash

# bash create-specs.sh "user" "repo" "tag" "repo2" "tag2" "print-node-npm-version"
# bash create-specs.sh "binbiriz" "drupal" "u1804-p80-n12-c233" "TRUE"

USER=$1
REPO=$2
TAG=$3
REPO_TWO=$4
TAG_TWO=$5
IMAGE="$1/$REPO:$TAG"
IMAGE_TWO="$1/$REPO_TWO:$TAG_TWO"
PRINT_NODE_VERSION=$6

SPECFILE="./specs/$REPO-$TAG-specs.txt"

docker container run -d -it --name deneme $IMAGE
docker exec deneme cat /etc/os-release > "$SPECFILE"
docker exec deneme cat /proc/version >> "$SPECFILE"
docker exec deneme apache2 -v >> "$SPECFILE"
docker exec deneme php --version >> "$SPECFILE"
docker exec deneme composer --version >> "$SPECFILE"

if [ "$PRINT_NODE_VERSION" == "TRUE" ]
then
  NODE=$(docker exec deneme node -v)
  NPM=$(docker exec deneme npm -v)
  echo "Node version: $NODE" >> "$SPECFILE"
  echo "Npm version: $NPM" >> "$SPECFILE"
else
  NODE="N/A"
  NPM="N/A"
  echo "Node version: $NODE" >> "$SPECFILE"
  echo "Npm version: $NPM" >> "$SPECFILE"
fi

docker exec deneme update-alternatives --config php >> "$SPECFILE"

echo "### $IMAGE" >> IMAGES.md
echo "" >> IMAGES.md
echo '```bash' >> IMAGES.md
echo "docker pull $IMAGE" >> IMAGES.md
echo "docker pull $IMAGE_TWO" >> IMAGES.md
echo '```' >> IMAGES.md
echo "" >> IMAGES.md

OS_ONE=$(cat "$SPECFILE" | grep -w "NAME" | sed 's/"//g' | sed 's/NAME=//g')
OS_TWO=$(cat "$SPECFILE" | grep -w "VERSION" | sed 's/"//g' | sed 's/VERSION=//g')
OS="$OS_ONE $OS_TWO"
WEB_SERVER_ONE=$(cat "$SPECFILE" | grep "Server version" | sed 's/Server version: //g')
WEB_SERVER_TWO=$(cat "$SPECFILE" | grep "Server built" | sed 's/Server built://g' | sed 's/ //g')
WEB_SERVER="$WEB_SERVER_ONE (built: $WEB_SERVER_TWO)"
PHP=$(cat "$SPECFILE" | grep "cli" | sed 's/PHP //g')
COMPOSER=$(cat "$SPECFILE" | grep "Composer" | sed 's/Composer version //g')

echo "| **Spec**   | **Version** |" >> IMAGES.md
echo "| :--------- | :---------- |" >> IMAGES.md
echo "| OS         | $OS         |" >> IMAGES.md
echo "| Web Server | $WEB_SERVER |" >> IMAGES.md
echo "| PHP        | $PHP        |" >> IMAGES.md
echo "| Composer   | $COMPOSER   |" >> IMAGES.md
echo "| Node       | $NODE       |" >> IMAGES.md
echo "| Npm        | $NPM        |" >> IMAGES.md
echo "" >> IMAGES.md

docker stop deneme
docker rm deneme