ARG VARIANT=bookworm
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

USER root

# Install build tools for C++, the mother-tongue
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install \
    build-essential \
    cmake \
    cppcheck \
    valgrind \
    clang \
    lldb \
    llvm \
    gdb \
    gdb-multiarch \
    openocd \
    gcc-arm-linux-gnueabihf \
    net-tools \
    dnsutils \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

ARG HOME=/home/vscode
ARG UID=1000
ARG GID=${UID}

RUN install -d -m 0755 -o vscode -g ${GID} ${HOME}/.config
COPY --chmod=0755 --chown=${UID}:${GID} config/atuin.toml ${HOME}/.config/atuin.toml
COPY --chmod=0755 --chown=${UID}:${GID} config/starship.toml ${HOME}/.config/starship.toml

# Add scripts to run during final layer additions
COPY --chmod=0755 --chown=${UID}:${GID} scripts/* /tmp/install/

ENV PATH=${HOME}/.local/bin:${PATH}