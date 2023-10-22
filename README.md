# gentoo install notes:
emerge --ask sys-block/io-scheduler-udev-rules

emerge --ask app-portage/cpuid2cpuflags
echo "*/* $(cpuid2cpuflags)" > /etc/portage/package.use/00cpu-flags

# flatpak curor theme
copy Adwaita from /usr/share/icons to ~/.icons
add ~/.icons to flatseal env
make sure you have the dbus autostart stuff for systemd or openrc
change icon theme with gsettings or lxappearance or nwg-look or all, whatever works :)

# thunar
xfce-base/thunar -thrash-panel-plugin

# guru overlay
eselect repository enable guru
guru accept.keywords: */*::guru

# nvidia dist-kernel
USE=”dist-kernel”

# Rust
emerge --oneshot dev-lang/rust-bin

# appimages
emerge --ask sys-fs/fuse:0

# kernel package accept keywords
sys-kernel/gentoo-kernel-bin ~amd64
virtual/dist-kernel ~amd64

# lxappearance:
GDK_BACKEND=x11 lxappearance

# fonts:
emerge --ask media-fonts/noto media-fonts/fonts-meta media-fonts/corefonts

# hardware detections:
emerge --ask sys-apps/usbutils
emerge --ask sys-apps/pciutils
emerge --ask sys-apps/hwdata

use lspci and lsusb

# file picker xdg portal:
use xdg-desktop-portal-gtk not gnome to get file-picker to work in wayland

# hostname fix:
hostname while using networkmanager is in /etc/conf.d/hostname

DCCP NUMA

Grub Wayland X vulkan 
