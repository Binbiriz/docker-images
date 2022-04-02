#!/bin/bash

# bash build-push.sh "user" "repo" "tag" "repo2" "tag2"
# bash build-push.sh "binbiriz" "drupal" "u1804-p80-n12-c233" "ubuntu-18.04-php8.0" "node12"

USER=$1
REPO=$2
TAG=$3
REPO_TWO=$4
TAG_TWO=$5
IMAGE="$1/$REPO:$TAG"
IMAGE_TWO="$1/$REPO_TWO:$TAG_TWO"
LOGFILE="./logs/log.csv"

INI=$(date +%Y-%m-%d_%H%M%S)
echo "$INI"

docker build -t $IMAGE -t $IMAGE_TWO - < "./dockerfiles/$TAG.Dockerfile"
docker push $IMAGE
docker push $IMAGE_TWO

FINI=$(date +%Y-%m-%d_%H%M%S)
echo "$FINI"

echo "$TAG;$INI;$FINI" >> "$LOGFILE"