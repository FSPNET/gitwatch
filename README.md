# Gitwatch

FSP Network Gen2 Server Infrastructure - Gitwatch

[![MicroBadger Size](https://img.shields.io/microbadger/image-size/fspnetwork/gitwatch.svg?style=flat-square)](https://microbadger.com/#/images/fspnetwork/gitwatch)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg?style=flat-square)](https://github.com/996icu/996.ICU/blob/master/LICENSE)
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg?style=flat-square)](https://996.icu)

## Supported tags

- [`edge` (Dockerfile)](https://github.com/FSPNET/gitwatch/blob/master/Dockerfile)

## Supported Package Registry

- [Docker.io](https://hub.docker.com/r/fspnetwork/gitwatch/)

## Environment variables

- `SSH_PRIVATE_KEY`
- `EMAIL`
- `NAME`

## Usage

```sh
docker run \
  -e EMAIL=root@localhost \
  -e NAME=root \
  -e 'SSH_PRIVATE_KEY=-----BEGIN OPENSSH PRIVATE KEY-----
[...]
-----END OPENSSH PRIVATE KEY-----' \
  -v data:/mnt/watching \
  fspnetwork/gitwatch \
  -b master -r origin /mnt/watching
```

## LICENSE

The code in this repository, unless otherwise noted, is [Anti-996](LICENSE) licensed. See the LICENSE file in this repository.