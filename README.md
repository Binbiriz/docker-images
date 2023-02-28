# Binbiriz Docker Images

These images can be used to build and deploy Drupal via GitLab CI/CD. Please note that these images does not include Drupal itself.

## GitHub Actions

Only the changes in files in `dockerfiles` folder will trigger image build and push/publish for the changed files. However sometimes there is a need for building and pushing all the images. To do that, just add a timestamp line to `.build_and_publish_all` file like `2022-09-11 09:15:00`, and then commit and push. GitHub Actions is also looks for whether this file is changed or not. If so, it triggers build and push/publish process for all images.

## Docker Hub

[Binbiriz profile on Docker Hub](https://hub.docker.com/u/binbiriz).

## Current Images

Please visit [Binbiriz Drupal repository on Docker Hub](https://hub.docker.com/r/binbiriz/drupal) for current images.

## Development

```txt
node v16.13.2
npm 8.1.2
```

## Credits

This repo is inspired by [Shawn McCabe's docker repo](https://github.com/smmccabe/docker).
