pacman -S wget b43-fwcutter
wget https://aur.archlinux.org/packages/b4/b43-firmware/b43-firmware.tar.gz
tar -zxf b43-firmware.tar.gz
cd b43-firmware
makepkg -si --asroot
rmmod b43 && modprobe b43
echo arch > /etc/hostname 
ln -s /usr/share/zoneinfo/US/Central /etc/localtime
hwclock --systohc --utc 
useradd -m -g users -G wheel -s /bin/bash dmj && passwd dmj 
sudo pacman -S sudo
nano /etc/sudoers
sudo nano /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
mkinitcpio -p linux
pacman -S grub-efi-x86_64
grub-mkconfig -o boot/grub/grub.cfg
grub-mkstandalone -o boot.efi -d usr/lib/grub/x86_64-efi -O x86_64-efi -C xz boot/grub/grub.cfg
mkdir /mnt/usbdisk && mount /dev/sdc1 /mnt/usbdisk
cp boot.efi /mnt/usbdisk/
umount /mnt/usbdisk/
sudo pacman -S dialog wpa_supplicant iw


