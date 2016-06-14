# factory-image-flash-tool [Linux]
Package with tools to flash 64-bit YU-OPEN-OS Marshmallow factory images on  YU YUTOPIA devices.

Note: Since This tool is for Linux or ubuntu you need to install bellow memtioned packages in your laptop or PC

#Install ADB Tools
sudo apt-get install android-tools-adb

#Install Fastboot Tools
sudo apt-get install android-tools-fastboot


YU YUTOPIA:
-----------

## How to
### Steps to flash factory image
 1. Download the YU-OPEN-OS Marshmallow factory image fastboot package for YU YUTOPIA from [Here](http://developer.yuplaygod.com/yuplaydev/index.php#downloads)

 2. Extract the contents of the fastboot package into a folder.

 3. Download this flashing tools package from [here](https://github.com/YUTeleventures/factory-image-flash-tools-linux-/archive/flashingtool-yutopia.zip)

 4. Extract the contents of the flashing tools zip into the same folder    
    To make sure, check that system.img, boot.img etc files are in the same
    folder as flash-all.sh

 5. Connect your phone in fastboot mode, steps for which are : -   
  a. Power off your phone    
  b. Press and hold the Volume Up key    
  c. With the Volume Up key, connect the phone to your PC/Laptop with USB cable   
  d. You can let go off the Volume Up key when Fastboot Mode is displayed on the screen

 6. Open terminal and navigate to the directory where you are extracted images and flash-all.sh.
    Now type ./flash-all.sh in termenal and press enter.

 7. <b>DO NOT</b> disconnect the device during flashing procedure

 8. After all command are excuted Disconnect the USB cable, and boot the phone normally by long pressing the Power button.    

#### 3rd Party Licenses

The adb and fastboot tools are distributed by Google, as part of Android SDK. 
There are licensed under Apache 2.0 by Google, and can be redistributed under 
a compatible license.  
