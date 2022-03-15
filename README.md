# Binbiriz Docker Images

These images are used to deploy Drupal via GitLab CI/CD.

## Docker Hub

[Binbiriz profile on docker hub](https://hub.docker.com/u/binbiriz)

## Build and Publish Images

```bash
docker build -t binbiriz/ubuntu-18.04-php8.1:nonode ./ubuntu/
docker push binbiriz/ubuntu-18.04-php8.1:nonode

docker build -t binbiriz/ubuntu-18.04-php8.1:node12 ./ubuntu-node/
docker push binbiriz/ubuntu-18.04-php8.1:node12
```
