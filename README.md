# kimyvgy/rustdev

[![Debian](https://github.com/kimyvgy/docker-rustdev/actions/workflows/debian.yml/badge.svg?branch=main)](https://github.com/kimyvgy/docker-rustdev/actions/workflows/debian.yml)
[![Docker Hub Description](https://github.com/kimyvgy/docker-rustdev/actions/workflows/docker-hub-description.yml/badge.svg?branch=main)](https://github.com/kimyvgy/docker-rustdev/actions/workflows/docker-hub-description.yml)

Dev container for Rust development.

- [ ] `devcontainer` + `vscode` extensions for Rust
- [x] `cargo watch`: Live reloading
- [x] `sccache`: Pre-installed `sccache`
- [x] `rust` user will be created if the container provides env variables: UID, GID. It will be helpful when using `devcontainer`.

## docker-compose.yml

```yaml
version: "3.6"

services:
  rustdev:
    image: kimyvgy/rustdev:1-bullseye
    working_dir: /app
    volumes:
      - ./:/app
    tty: true
```

```bash
# Start rustdev container:
docker compose up -d

# Develop rust app in watch mode:
docker compose exec rustdev cargo watch -x run
```
