cd /Volumes/Arch
mkdir System mach_kernel
cd System
mkdir Library
cd Library
mkdir CoreServices
cd CoreServices
cp ~/Desktop/SystemVersion.plist SystemVersion.plist
cp /Volumes/UNTITLED/boot.efi boot.efi
sudo bless --device /dev/disk0s4 --setBoot --verbose
