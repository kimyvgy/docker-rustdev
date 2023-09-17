ARG tag="latest"

FROM rust:${tag}

RUN apt update && apt install -y curl git pkg-config libssl-dev musl-dev unzip
RUN rustup component add clippy rustfmt
RUN cargo install cargo-watch sccache

RUN mkdir /.cargo \
  && printf "[build]\nrustc-wrapper = \"/usr/local/cargo/bin/sccache\"" > /.cargo/config.toml 

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
CMD ["/bin/bash"]
