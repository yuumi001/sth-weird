
||
|-|
|[Dual boot windows with Ubuntu](#dual-boot-windows-with-ubuntu)|
|VM Ubuntu|
|WSL && WSL2|

# Install ubuntu
||
|-|
|[Dual boot windows with Ubuntu](#dual-boot-windows-with-ubuntu)|
|[VM Ubuntu](#vm-ubuntu)|
|[WSL && WSL2](#wsl-&&-wsl2)|
## dual-boot windows with Ubuntu
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
5. Check SATA mode:
  + Press `Windows + X`.
  + Select `Device manager`.
  + Click the arrow next to `IDE ATA/ATAPI Controllers` to display the list of controller drivers currently used by your system.
  + Check for an entry that contains the acronym `AHCI`. If an entry exists, and there is no yellow exclamation mark or red "X" over it, then `AHCI mode is properly enabled`. If you don't see an `AHCI entry`, or the only entry contains a red or yellow mark, then there's a problem and `AHCI mode is not properly enabled`.
6. Turn on AHCI (Skip this step if it on):
  + Turn on safe mode: `Windows + R` --> `msconfig` --> press enter --> Boot --> click `safe boot` box --> click `Ok`
  in you next start-up it will boot to safe mode
  + Restart and open boot option (spam F2 or ESC) :>
  + Find `SATA mode` option then change it to `AHCI`
  + Save then restart
  At this time your computer will automatic install AHCI drive when it boot to safe mode 
  + Turn off safe boot: `Windows + R` -->  `msconfig` --> press enter --> Boot > untick `safe boot` box --> click `OK` then restart
7. Start to install ubuntu
 - Connect your usb stick then boot-up it (just spam F9/F10 or F12 :> )
 - From the menu select Install Ubuntu and hit Enter to continue.
 - On the Launcher hit on the second icon from top, the installer utility will start. Choose the language you wish to perform the installation and click on the Continue button to proceed further.
 - Next, choose the first option “Normal Installation” and hit on the Continue button again. (you can choose Install third-party to automatic install drive for ubuntu)
 - Now it’s time to select an Installation Type. You can choose to Install `Ubuntu alongside Windows Boot Manager`, an option that will automatically take care of all the partition steps. (THE EASIEST WAY)
 - Click Continue then wait :>
 - There're some bla bla steps, but I belive u can handle it yourself. :>>
## VM Ubuntu
alalala
## WSL && WSL2
alalala
