#!/bin/bash

test -f package-lock.json && npm ci || npm install

echo "# Binbiriz Docker Images" > "IMAGES.md"
echo "" >> "IMAGES.md"
echo "These images can be used to build and deploy Drupal via GitLab CI/CD or any other CI/CD vendor. Please note that these images does not include Drupal itself." >> "IMAGES.md"
echo "" >> "IMAGES.md"
echo "[Binbiriz profile on Docker Hub](https://hub.docker.com/u/binbiriz)." >> "IMAGES.md"
echo "" >> "IMAGES.md"
echo "[Binbiriz Drupal repository on Docker Hub](https://hub.docker.com/r/binbiriz/drupal)." >> "IMAGES.md"
echo "" >> "IMAGES.md"
echo "## Current Images" >> "IMAGES.md"
echo "" >> "IMAGES.md"

# Dockerfile: dockerfiles/deb11-p80-n12-c207.Dockerfile
bash build-push.sh "binbiriz" "drupal" "deb11-p80-n12-c207" "debian-11-php8.0" "node12"
bash create-specs.sh "binbiriz" "drupal" "deb11-p80-n12-c207" "debian-11-php8.0" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/deb11-p80-n12-c2212.Dockerfile
bash build-push.sh "binbiriz" "drupal" "deb11-p80-n12-c2212" "debian-11-php8.0" "node12"
bash create-specs.sh "binbiriz" "drupal" "deb11-p80-n12-c2212" "debian-11-php8.0" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/deb11-p80-nna-c207.Dockerfile
bash build-push.sh "binbiriz" "drupal" "deb11-p80-nna-c207" "debian-11-php8.0" "nonode"
bash create-specs.sh "binbiriz" "drupal" "deb11-p80-nna-c207" "debian-11-php8.0" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/deb11-p80-nna-c2212.Dockerfile
bash build-push.sh "binbiriz" "drupal" "deb11-p80-nna-c2212" "debian-11-php8.0" "nonode"
bash create-specs.sh "binbiriz" "drupal" "deb11-p80-nna-c2212" "debian-11-php8.0" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u1804-p74-nna-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u1804-p74-nna-c233" "ubuntu-18.04-php7.4" "nonode"
bash create-specs.sh "binbiriz" "drupal" "u1804-p74-nna-c233" "ubuntu-18.04-php7.4" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u1804-p80-n12-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u1804-p80-n12-c233" "ubuntu-18.04-php8.0" "node12"
bash create-specs.sh "binbiriz" "drupal" "u1804-p80-n12-c233" "ubuntu-18.04-php8.0" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u1804-p80-nna-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u1804-p80-nna-c233" "ubuntu-18.04-php8.0" "nonode"
bash create-specs.sh "binbiriz" "drupal" "u1804-p80-nna-c233" "ubuntu-18.04-php8.0" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u1804-p81-n12-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u1804-p81-n12-c233" "ubuntu-18.04-php8.1" "node12"
bash create-specs.sh "binbiriz" "drupal" "u1804-p81-n12-c233" "ubuntu-18.04-php8.1" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u1804-p81-nna-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u1804-p81-nna-c233" "ubuntu-18.04-php8.1" "nonode"
bash create-specs.sh "binbiriz" "drupal" "u1804-p81-nna-c233" "ubuntu-18.04-php8.1" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u2004-p80-n12-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u2004-p80-n12-c233" "ubuntu-20.04-php8.0" "node12"
bash create-specs.sh "binbiriz" "drupal" "u2004-p80-n12-c233" "ubuntu-20.04-php8.0" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u2004-p80-n14-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u2004-p80-n14-c233" "ubuntu-20.04-php8.0" "node14"
bash create-specs.sh "binbiriz" "drupal" "u2004-p80-n14-c233" "ubuntu-20.04-php8.0" "node14" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u2004-p80-nna-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u2004-p80-nna-c233" "ubuntu-20.04-php8.0" "nonode"
bash create-specs.sh "binbiriz" "drupal" "u2004-p80-nna-c233" "ubuntu-20.04-php8.0" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u2004-p81-n12-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u2004-p81-n12-c233" "ubuntu-20.04-php8.1" "node12"
bash create-specs.sh "binbiriz" "drupal" "u2004-p81-n12-c233" "ubuntu-20.04-php8.1" "node12" "TRUE"

./node_modules/.bin/prettier --write IMAGES.md

# Dockerfile: dockerfiles/u2004-p81-nna-c233.Dockerfile
bash build-push.sh "binbiriz" "drupal" "u2004-p81-nna-c233" "ubuntu-20.04-php8.1" "nonode"
bash create-specs.sh "binbiriz" "drupal" "u2004-p81-nna-c233" "ubuntu-20.04-php8.1" "nonode" "FALSE"

./node_modules/.bin/prettier --write IMAGES.md