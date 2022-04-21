# Binbiriz Docker Images

These images can be used to build and deploy Drupal via GitLab CI/CD or any other CI/CD vendor. Please note that these images does not include Drupal itself.

[Binbiriz profile on Docker Hub](https://hub.docker.com/u/binbiriz).

[Binbiriz Drupal repository on Docker Hub](https://hub.docker.com/r/binbiriz/drupal).

## Current Images

### binbiriz/drupal:deb11-p80-n12-c207

```bash
docker pull binbiriz/drupal:deb11-p80-n12-c207
docker pull binbiriz/debian-11-php8.0:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Debian GNU/Linux 11 (bullseye)                      |
| Web Server | Apache/2.4.53 (Debian) (built: 2022-03-14T16:28:35) |
| PHP        | 8.0.17 (cli) (built: Mar 29 2022 02:26:43) ( NTS )  |
| Composer   | 2.0.7 2020-11-13 17:31:06                           |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:deb11-p80-n12-c2212

```bash
docker pull binbiriz/drupal:deb11-p80-n12-c2212
docker pull binbiriz/debian-11-php8.0:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Debian GNU/Linux 11 (bullseye)                      |
| Web Server | Apache/2.4.53 (Debian) (built: 2022-03-14T16:28:35) |
| PHP        | 8.0.17 (cli) (built: Mar 29 2022 02:26:43) ( NTS )  |
| Composer   | 2.2.12 2022-04-13 16:42:25                          |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:deb11-p80-nna-c207

```bash
docker pull binbiriz/drupal:deb11-p80-nna-c207
docker pull binbiriz/debian-11-php8.0:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Debian GNU/Linux 11 (bullseye)                      |
| Web Server | Apache/2.4.53 (Debian) (built: 2022-03-14T16:28:35) |
| PHP        | 8.0.17 (cli) (built: Mar 29 2022 02:26:43) ( NTS )  |
| Composer   | 2.0.7 2020-11-13 17:31:06                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:deb11-p80-nna-c2212

```bash
docker pull binbiriz/drupal:deb11-p80-nna-c2212
docker pull binbiriz/debian-11-php8.0:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Debian GNU/Linux 11 (bullseye)                      |
| Web Server | Apache/2.4.53 (Debian) (built: 2022-03-14T16:28:35) |
| PHP        | 8.0.17 (cli) (built: Mar 29 2022 02:26:43) ( NTS )  |
| Composer   | 2.2.12 2022-04-13 16:42:25                          |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u1804-p74-nna-c233

```bash
docker pull binbiriz/drupal:u1804-p74-nna-c233
docker pull binbiriz/ubuntu-18.04-php7.4:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 7.4.28 (cli) (built: Feb 17 2022 16:06:19) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u1804-p80-n12-c233

```bash
docker pull binbiriz/drupal:u1804-p80-n12-c233
docker pull binbiriz/ubuntu-18.04-php8.0:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:03:50) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:u1804-p80-nna-c233

```bash
docker pull binbiriz/drupal:u1804-p80-nna-c233
docker pull binbiriz/ubuntu-18.04-php8.0:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:03:50) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u1804-p81-n12-c233

```bash
docker pull binbiriz/drupal:u1804-p81-n12-c233
docker pull binbiriz/ubuntu-18.04-php8.1:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 8.1.4 (cli) (built: Apr 4 2022 13:30:00) (NTS)      |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:u1804-p81-nna-c233

```bash
docker pull binbiriz/drupal:u1804-p81-nna-c233
docker pull binbiriz/ubuntu-18.04-php8.1:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 8.1.4 (cli) (built: Apr 4 2022 13:30:00) (NTS)      |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u2004-p80-n12-c233

```bash
docker pull binbiriz/drupal:u2004-p80-n12-c233
docker pull binbiriz/ubuntu-20.04-php8.0:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 20.04.4 LTS (Focal Fossa)                    |
| Web Server | Apache/2.4.41 (Ubuntu) (built: 2022-03-16T16:52:53) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:04:09) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:u2004-p80-n14-c233

```bash
docker pull binbiriz/drupal:u2004-p80-n14-c233
docker pull binbiriz/ubuntu-20.04-php8.0:node14
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 20.04.4 LTS (Focal Fossa)                    |
| Web Server | Apache/2.4.41 (Ubuntu) (built: 2022-03-16T16:52:53) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:04:09) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v14.15.4                                            |
| Npm        | 6.14.10                                             |

### binbiriz/drupal:u2004-p80-nna-c233

```bash
docker pull binbiriz/drupal:u2004-p80-nna-c233
docker pull binbiriz/ubuntu-20.04-php8.0:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 20.04.4 LTS (Focal Fossa)                    |
| Web Server | Apache/2.4.41 (Ubuntu) (built: 2022-03-16T16:52:53) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:04:09) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u2004-p81-n12-c233

```bash
docker pull binbiriz/drupal:u2004-p81-n12-c233
docker pull binbiriz/ubuntu-20.04-php8.1:node12
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 20.04.4 LTS (Focal Fossa)                    |
| Web Server | Apache/2.4.41 (Ubuntu) (built: 2022-03-16T16:52:53) |
| PHP        | 8.1.4 (cli) (built: Apr 4 2022 13:30:17) (NTS)      |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v12.22.12                                           |
| Npm        | 6.14.16                                             |

### binbiriz/drupal:u2004-p81-nna-c233

```bash
docker pull binbiriz/drupal:u2004-p81-nna-c233
docker pull binbiriz/ubuntu-20.04-php8.1:nonode
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 20.04.4 LTS (Focal Fossa)                    |
| Web Server | Apache/2.4.41 (Ubuntu) (built: 2022-03-16T16:52:53) |
| PHP        | 8.1.4 (cli) (built: Apr 4 2022 13:30:17) (NTS)      |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | N/A                                                 |
| Npm        | N/A                                                 |

### binbiriz/drupal:u1804-p74-n14-c233

```bash
docker pull binbiriz/drupal:u1804-p74-n14-c233
docker pull binbiriz/ubuntu-18.04-php7.4:node14
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 7.4.28 (cli) (built: Feb 17 2022 16:06:19) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v14.15.4                                            |
| Npm        | 6.14.10                                             |

### binbiriz/drupal:u1804-p74-n10-c233

```bash
docker pull binbiriz/drupal:u1804-p74-n10-c233
docker pull binbiriz/ubuntu-18.04-php7.4:node10
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 7.4.28 (cli) (built: Feb 17 2022 16:06:19) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v10.16.0                                            |
| Npm        | 6.9.0                                               |

### binbiriz/drupal:deb11-p74-n10-c233

```bash
docker pull binbiriz/drupal:deb11-p74-n10-c233
docker pull binbiriz/debian-11-php7.4:node10
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Debian GNU/Linux 11 (bullseye)                      |
| Web Server | Apache/2.4.53 (Debian) (built: 2022-03-14T16:28:35) |
| PHP        | 7.4.29 (cli) (built: Apr 20 2022 12:13:53) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v10.16.0                                            |
| Npm        | 6.9.0                                               |

### binbiriz/drupal:u1804-p80-n14-c233

```bash
docker pull binbiriz/drupal:u1804-p80-n14-c233
docker pull binbiriz/ubuntu-18.04-php8.0:node14
```

| **Spec**   | **Version**                                         |
| :--------- | :-------------------------------------------------- |
| OS         | Ubuntu 18.04.6 LTS (Bionic Beaver)                  |
| Web Server | Apache/2.4.29 (Ubuntu) (built: 2022-03-16T16:53:42) |
| PHP        | 8.0.17 (cli) (built: Mar 20 2022 17:03:50) ( NTS )  |
| Composer   | 2.3.3 2022-04-01 22:15:35                           |
| Node       | v14.19.1                                            |
| Npm        | 6.14.16                                             |
