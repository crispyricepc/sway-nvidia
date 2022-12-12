# `sway-nvidia`

Helper files to make sway a better experience for us poor NVIDIA users.

## Installation

### Dependencies

`sway` and any proprietary NVIDIA driver is required (although this probably includes their new open kernel modules, I have not tested). It may also be the case that `vulkan-validation-layers` are required to use the vulkan backend.

### AUR Installation

If you're using ArchLinux, the package is available in the AUR as [`sway-nvidia`](https://aur.archlinux.org/packages/sway-nvidia).

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

### From TTY / Shell

If starting from a shell, replace your `sway` command with the following:

```sh
exec sway-nvidia
```
### From a Display Manager

If you're starting from a display manager, select `Sway (NVIDIA)` from your wayland sessions list

## Known Issues

### Cannot take screenshots

Because we're using the experimental vulkan renderer to avoid graphical issues, screen capture is not yet implemented on wlroots 0.15. The issue is being tracked [here](https://gitlab.freedesktop.org/wlroots/wlroots/-/issues/3290)

That being said, anyone using `sway-git` & `wlroots-git`, this issue has been fixed in version 0.16

### glxtest for Firefox hardware acceleration fails

This issue is being tracked [here](https://bugzilla.mozilla.org/show_bug.cgi?id=1759315)

## See Also

[A discussion on the NVIDIA forums for everyone sharing hacks to getting sway to work](https://forums.developer.nvidia.com/t/nvidia-495-on-sway-tutorial-questions-arch-based-distros/192212). If this package doesn't work on your PC, it's a good idea to see if anyone over there has a similar setup
