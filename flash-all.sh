@echo ---------------------[ Start flashing ROM ]-------------------------
@echo ----------------[ Checking for connected devices ]------------------
@fastboot -i 0x2A96 devices 
@echo -------------------[ Unlocking bootloader ]-------------------------
@fastboot -i 0x2A96 oem unlock 
@echo ----------------------[ Flashing kernel ]---------------------------
@fastboot -i 0x2A96 flash boot boot.img
@echo -------------------[ Flashing cache partition ]---------------------
@fastboot -i 0x2A96 flash cache cache.img
@echo -------------------[ Flashing data partition ]----------------------
@fastboot -i 0x2A96 flash userdata userdata.img
@echo -------------------[ Flashing system partition ]--------------------
@fastboot -i 0x2A96 flash system system.img
@echo ----------------------[ Flashing recovery ]-------------------------
@fastboot -i 0x2A96 flash recovery recovery.img
@echo ---------------------[ Rebooting device ]---------------------------
@fastboot -i 0x2A96 reboot
@echo -------------------------[ ALL DONE ]-------------------------------