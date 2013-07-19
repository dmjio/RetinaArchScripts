mkfs.ext2 /dev/sda5
mkfs.ext4 /dev/sda6
mkfs.ext4 /dev/sda7
mount /dev/sda6 /mnt
mkdir /mnt/boot && mount /dev/sda5 /mnt/boot
mkdir /mnt/home && mount /dev/sda7 /mnt/home
pacstrap /mnt base base-devel
genfstab -p /mnt >> /mnt/etc/fstab
nano /mnt/etc/fstab