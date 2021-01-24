# install ubuntu
## dual windows with ubuntu
### 
1. Download ubuntu image file to your computer  
[Link download official](https://ubuntu.com/#download)
2. Download rufus  
[Link download official](https://rufus.ie/)
3. Create live usb boot ubuntu - need an usb(>=4GB)
- Run rufus as administrator
- In device box, choose your usb 
- Click in select then choose the ubuntu.iso file you have already downloaded
- Click strart then wait till done :>
4. Create free space for ubuntu installation
- Open disk manager :
  + right click `This PC` --> `Manage` --> `Computer Management`
  + `Win + R` --> type diskmgmt.msc --> press enter
  + ...
- Right click in partion you want --> shrink --> in `Enter amount of space to shrink` use at least 20000 MB --> click `Shrink` 
- Check SATA mode:
  + Press `Windows + X`.
  + Select `Device manager`.
  + Click the arrow next to `IDE ATA/ATAPI Controllers` to display the list of controller drivers currently used by your system.
  + Check for an entry that contains the acronym `AHCI`. If an entry exists, and there is no yellow exclamation mark or red "X" over it, then `AHCI mode is properly enabled`. If you don't see an `AHCI entry`, or the only entry contains a red or yellow mark, then there's a problem and `AHCI mode is not properly enabled`.
 - Turn on AHCI (Skip this step if it on):
  + Turn on safe mode: `Windows + R` --> `msconfig` --> press enter --> Boot --> click `safe boot` box --> click `Ok`
  in you next start-up it will boot to safe mode
  + Restart and open boot option (spam F2 or ESC) :>
  + Find `SATA mode` option then change it to `AHCI`
  + Save then restart
  At this time your computer will automatic install AHCI drive when it boot to safe mode 
  + Turn off safe boot: `Windows + R` -->  `msconfig` --> press enter --> Boot > untick `safe boot` box --> click `OK` then restart
 - Connect your usb stick then boot-up it (just spam F9/F10 or F12 :> )
 - From the menu select Install Ubuntu and hit Enter to continue.
 -On the Launcher hit on the second icon from top, Install Ubuntu 19.04 LTS, and the installer utility will start. Choose the language you wish to perform the installation and click on the Continue button to proceed further.
