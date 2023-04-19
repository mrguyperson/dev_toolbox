FROM docker.io/fedora:38


LABEL com.github.containers.distrobox="true" \
      name="archlinux" \
      version="latest"

RUN dnf update -y

RUN dnf install -y which \
                    rstudio-desktop \
                    neofetch \
                    htop \
                    btop \
                    glibc-langpack-en \
                    neofetch \
                    git \
                    gh