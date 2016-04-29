@echo ---------------------[ Start flashing ROM ]-------------------------
@echo ----------------[ Checking for connected devices ]------------------
@fastboot -i 0x1ebf devices 
@echo -------------------[ Unlocking bootloader ]-------------------------
@fastboot -i 0x1ebf oem unlock 
@echo ----------------------[ Flashing kernel ]---------------------------
@fastboot -i 0x1ebf flash boot boot.img
@echo ----------------------[ Flashing recovery ]-------------------------
@fastboot -i 0x1ebf flash recovery recovery.img
@echo -------------------[ Flashing system partition ]--------------------
@fastboot -i 0x1ebf flash system system.img
@echo -------------------[ Flashing data partition ]----------------------
@fastboot -i 0x1ebf flash userdata userdata.img
@echo ---------------------[ Relocking bootloader ]-----------------------
@fastboot -i 0x1ebf oem lock
@echo ---------------------[ Rebooting device ]---------------------------
@fastboot -i 0x1ebf reboot
@echo -------------------------[ ALL DONE ]-------------------------------

