FROM riscv64/alpine:3.20
RUN apk add --no-cache \
    bash \
    openssh-client \
    htop vim tmux curl less procps iproute2 \
    ca-certificates \
    && sed -i 's#/root:/bin/ash#/root:/bin/bash#' /etc/passwd
