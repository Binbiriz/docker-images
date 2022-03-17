# Binbiriz Docker Images

These images are used to deploy Drupal via GitLab CI/CD.

## Docker Hub

[Binbiriz profile on docker hub](https://hub.docker.com/u/binbiriz).

## Current Images

### [binbiriz/ubuntu-18.04-php8.1:nonode](https://hub.docker.com/layers/binbiriz/ubuntu-18.04-php8.1/nonode/images/sha256-14cca2d02e988cd22cfded109aa60f6597d1934a2f30ae75b2175e1e3243e1d4?context=repo)

#### Pull Command

```bash
docker pull binbiriz/ubuntu-18.04-php8.1:nonode
```

#### Properties

OS: Ubuntu 18.04.6 LTS

Web Server: Apache/2.4.29 (Ubuntu) (built: 2022-01-05T14:50:41)

PHP version: 8.1.3 (cli) (built: Feb 21 2022 14:48:26) (NTS)

Composer version: 2.2.7 2022-02-25 11:12:27

Node version: N/A

Npm version: N/A

Compressed size: 144.82 MB

### [binbiriz/ubuntu-18.04-php8.1:node12](https://hub.docker.com/layers/binbiriz/ubuntu-18.04-php8.1/node12/images/sha256-d89d5a36643977de1298c4b02b4eccdf29aade0a688903f96f6eb19a6a6a09cd?context=repo)

#### Pull Command

```bash
docker pull binbiriz/ubuntu-18.04-php8.1:node12
```

#### Properties

OS: Ubuntu 18.04.6 LTS

Web Server: Apache/2.4.29 (Ubuntu) (built: 2022-01-05T14:50:41)

PHP version: 8.1.3 (cli) (built: Feb 21 2022 14:48:26) (NTS)

Composer version: 2.2.7 2022-02-25 11:12:27

Node version: v12.22.10

Npm version: 6.14.16

Compressed size: 173.53 MB

## Build and Publish Images

```bash
docker build -t binbiriz/ubuntu-18.04-php8.1:nonode ./ubuntu/
docker push binbiriz/ubuntu-18.04-php8.1:nonode

docker build -t binbiriz/ubuntu-20.04-php8.1:nonode ./ubuntu2004/
docker push binbiriz/ubuntu-20.04-php8.1:nonode

docker build -t binbiriz/ubuntu-18.04-php8.1:node12 ./ubuntu-node/
docker push binbiriz/ubuntu-18.04-php8.1:node12

docker build -t binbiriz/ubuntu-20.04-php8.1:node12 ./ubuntu2004-node/
docker push binbiriz/ubuntu-20.04-php8.1:node12

docker build -t binbiriz/ubuntu-20.04-php8.0:node12 ./ubuntu2004-8.0-node/
docker push binbiriz/ubuntu-20.04-php8.0:node12
```

## Credits

This repo is inspired by [Shawn McCabe's docker repo](https://github.com/smmccabe/docker).
