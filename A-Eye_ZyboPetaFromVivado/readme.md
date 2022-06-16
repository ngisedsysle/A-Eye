# Petalinu From a Vivado Hardware Description File
Guilhem ROLLAND  
Thomas DU BOISROUVRAY  
Elsys Design Rennes  
## Project
Build an IA coded in C on a zybo Z7-20.
## Usefull petalinux commands
```bash
petalinux-create -t project --template zynq -n petaFromVivado # Create the workspace   
petalinux-config --get-hw-description # Load HDF file   
petalinux-config # Enter global configuration    
petalinux-config -c rootfs # Enter rootfs configuration   
petalinux-build # produce image.ub, system.dtb and rootfs files   
petalinux-package --boot --force --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/*_wrapper.bit --u-boot # produce BOOT.BIN    
```
## Usefull partition's gestion commands
You must have 2 partitions, one with 500 mo for boot, second for rootfs.   
https://docs.xilinx.com/v/u/2020.1-English/ug1144-petalinux-tools-reference-guide Appendix H  
```bash
sudo fdisk -l # List Partition  
# Must view /dev/mmcblk0p1 and /dev/mmcblk0p2  
sudo fdisk /dev/mmcblk0 # Enter the device, then m for help, d for delete, n for new  
sudo umount /dev/mmcblk0p1 # To unmount partition 1  
sudo umount /dev/mmcblk0p2 # To unmount partition 2  
sudo mkfs -t vfat /dev/mmcblk0p1 # To format the first partition as FAT32  
sudo mkfs -t ext4 /dev/mmcblk0p2 # To format the second partition as ext4  
udisksctl mount -b /dev/mmcblk0p1 # To mount partition 1  
udisksctl mount -b /dev/mmcblk0p2 # To mount partition 2  
# OR
sudo mkdir /media/rolland/rootfs  
sudo mkdir /media/rolland/BOOT  
sudo mount /dev/mmcblk0p1 /media/rolland/BOOT  
sudo mount /dev/mmcblk0p2 /media/rolland/rootfs  
sudo cp BOOT.BIN /media/rolland/BOOT/ # Copy BOOT.BIN  
sudo cp image.ub /media/rolland/BOOT/  
sudo cp system.dtb /media/rolland/BOOT/  
sudo tar zxvf rootfs.tar.gz -C /media/rolland/rootfs # Extract rootfs before delete, sync then  

```
