FROM docker.io/fedora:38

LABEL com.github.containers.distrobox="true" \
      name="fedora" \
      version="latest"

RUN dnf update -y

RUN sudo dnf copr enable iucar/cran

RUN dnf install -y which \
                    r-base \
                    r-base-dev \
                    atlas \
                    rstudio-desktop \
                    neofetch \
                    htop \
                    btop \
                    glibc-langpack-en \
                    neofetch \
                    git \
                    gh \
                    R-CoprManager