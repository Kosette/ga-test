ARG ARCH=amd64

FROM $ARCH/ubuntu:oracular

ENV CARGO_TERM_COLOR=always \
    CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse \
    RUST_BACKTRACE=full

RUN apt update && apt upgrade -y &&\
    apt install -y build-essential curl git pkg-config libssl-dev libgtk-4-dev libadwaita-1-dev libmpv-dev libgstreamer1.0-dev \
    libgstreamer-plugins-bad1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev

WORKDIR /app

VOLUME /app

COPY ./entrypoint.sh /

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
