ARG version="1.71"
ARG distro="bullseye"

FROM rust:${version}-${distro}

RUN apt update && apt install -y curl git pkg-config libssl-dev
RUN rustup component add clippy rustfmt
RUN cargo install cargo-watch

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
CMD ["/bin/bash"]
