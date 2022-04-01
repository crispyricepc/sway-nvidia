# `sway-nvidia`

Helper files to make sway a better experience for us poor NVIDIA users.

## Installation

Currently, this package is only available on ArchLinux via the AUR package `sway-nvidia`.

If you want to install this on another distro, you can clone and install the files manually

### From Source

Sway is still required if you're installing. This package doesn't replace sway

```sh
git clone https://github.com/crispyricepc/sway-nvidia
install -Dm755 sway-nvidia/sway-nvidia.sh /usr/local/bin/sway-nvidia
install -Dm755 sway-nvidia/sway-nvidia.desktop /usr/share/wayland-sessions/sway-nvidia.desktop
```