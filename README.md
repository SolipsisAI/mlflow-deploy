# MLFlow deployment with docker-compose

Based on: https://towardsdatascience.com/deploy-mlflow-with-docker-compose-8059f16b6039

## Deployment notes

The system this setup is deployed on:

```
OS: Ubuntu 22.04 LTS x86_64
Host: MS-7C77 1.0
Kernel: 5.15.0-27-generic
Uptime: 19 hours, 35 mins
Packages: 1025 (dpkg), 6 (snap)
Shell: zsh 5.8.1
Terminal: /dev/pts/0
CPU: Intel i7-10700 (16) @ 4.800GHz
GPU: NVIDIA GeForce RTX 2070 SUPER
Memory: 1461MiB / 32019MiB
```

## Setup

Copy `.env.example` into `.env` and change the values for `MYSQL_PASSWORD` and `MYSQL_ROOT_PASSWORD` to randomly generated passwords.

```
cp .env{.example,}

# generate password using this
openssl rand -base64 12
```

Then:

```
docker compose up -d --build
```

If you make any changes to the `Dockerfile` in any of these subfolders, you may have to force recreation:

```
docker compose up -d --build --force-recreate
```

# Troubleshooting

- https://discourse.jupyter.org/t/troubleshoot-terminal-hangs-on-launch-docker-image-fails-in-linux-works-in-macos/2829
