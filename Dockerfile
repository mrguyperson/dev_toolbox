FROM registry.fedoraproject.org/fedora:latest

LABEL com.github.containers.distrobox="true" \
      name="fedora" \
      version="latest"

RUN sudo dnf update -y


RUN sudo dnf install -y which \
                    R \
                    atlas \
                    rstudio-desktop \
                    neofetch \
                    htop \
                    btop \
                    flatpak \
                    flatpak-spawn \
                    glibc-langpack-en \
                    neofetch \
                    git \
                    gh \
                    'dnf-command(copr)'


RUN sudo dnf copr enable -y iucar/cran \
      && sudo dnf install -y R-CoprManager
