echo -----------------[ Booting into fastboot mode ]---------------------
adb reboot bootloader
echo ---------------------[ Start flashing ROM ]-------------------------
echo ----------------[ Checking for connected devices ]------------------
fastboot devices
echo -------------------[ Unlocking bootloader ]-------------------------
fastboot oem unlock
echo ----------------------[ Flashing kernel ]---------------------------
fastboot flash boot boot.img
echo ----------------------[ Flashing recovery ]-------------------------
fastboot flash recovery recovery.img
echo -------------------[ Flashing system partition ]--------------------
fastboot flash system system.img
echo -------------------[ Flashing data partition ]----------------------
fastboot flash userdata userdata.img
echo ---------------------[ Rebooting device ]---------------------------
fastboot reboot
echo -------------------------[ ALL DONE ]-------------------------------
