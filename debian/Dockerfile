ARG tag="latest"

FROM rust:${tag}

RUN apt update && apt install -y curl git pkg-config libssl-dev
RUN rustup component add clippy rustfmt
RUN cargo install cargo-watch

COPY entrypoint.sh /bin/entrypoint.sh

ENV UID=1000 GID=1000

ENTRYPOINT [ "entrypoint.sh" ]
CMD ["/bin/bash"]
