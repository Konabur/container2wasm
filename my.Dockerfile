FROM riscv64/alpine:3.20
RUN apk add --no-cache \
    bash \
    openssh-client \
    htop vim tmux curl less procps iproute2 \
    ca-certificates \
    && sed -i 's#/root:/bin/ash#/root:/bin/bash#' /etc/passwd
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 SHELL=/bin/bash
WORKDIR /root
# c2w запускает CMD образа — это и есть стартовый процесс терминала
CMD ["/bin/bash"]
