# `sway-nvidia`

Helper files to make sway a better experience for us poor NVIDIA users.

## Installation

Currently, this package is only available on ArchLinux via the AUR package [`sway-nvidia`](https://aur.archlinux.org/packages/sway-nvidia).

If you want to install this on another distro, you can clone and install the files manually

### From Source

Sway is still required if you're installing. This package doesn't replace sway

```sh
git clone https://github.com/crispyricepc/sway-nvidia
sudo install -Dm755 sway-nvidia/sway-nvidia.sh "/usr/local/bin/sway-nvidia"
sudo install -Dm644 sway-nvidia/sway-nvidia.desktop "/usr/share/wayland-sessions/sway-nvidia.desktop"
sudo install -Dm644 sway-nvidia/wlroots-env-nvidia.sh "/usr/local/share/wlroots-nvidia/wlroots-env-nvidia.sh"
```

## Usage

If starting from a shell, replace your `sway` command with the following:

```sh
exec sway-nvidia
```

If you're starting from a display manager, select `Sway (NVIDIA)` from your wayland sessions list
