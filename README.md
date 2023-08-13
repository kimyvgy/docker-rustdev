# kimyvgy/rustdev

[![Debian](https://github.com/kimyvgy/docker-rustdev/actions/workflows/debian.yml/badge.svg?branch=main)](https://github.com/kimyvgy/docker-rustdev/actions/workflows/debian.yml)
[![Docker Hub Description](https://github.com/kimyvgy/docker-rustdev/actions/workflows/docker-hub-description.yml/badge.svg?branch=main)](https://github.com/kimyvgy/docker-rustdev/actions/workflows/docker-hub-description.yml)

Dev container for Rust development.

- `devcontainer` + `vscode` extensions for Rust
- `cargo watch`: Live reloading in Rust
- `rust` user will automatically be created when starting with custom UID, GID

## docker-compose.yml

```bash
version: "3.6"

services:
  rustdev:
    image: kimyvgy/rustdev:1.71-bullseye
    working_dir: /app
    volumes:
      - ../:/app
    ports:
      - ${PORT:-8080}:${PORT:-8080}
    environment:
      UID: ${UID:-1000}
      GID: ${GID:-1000}
    tty: true
```

```bash
# Run container with custom user `rust` (UID, GID):
docker compose up -d

# Develop rust app in watch mode:
docker compose exec -u rust rustdev cargo watch -x run
```
