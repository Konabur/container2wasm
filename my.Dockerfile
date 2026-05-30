FROM riscv64/debian:stable
RUN apt-get update && apt-get install -y --no-install-recommends \
    htop vim tmux curl less procps iproute2 ca-certificates && \
    rm -rf /var/lib/apt/lists/*
