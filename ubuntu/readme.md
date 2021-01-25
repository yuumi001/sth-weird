
||
|-|
|[Install Ubuntu](#install-ubuntu)|
|[After Install](#after-install)|
|[Tools](#tools)|

# Install ubuntu
||
|-|
|[Dual boot windows with Ubuntu](#dual-boot-windows-with-ubuntu)|
|[VM Ubuntu](#vm-ubuntu)|
|[WSL && WSL2](#wsl--wsl2)|
|[Setup docker](#setup-docker)|
## Dual-boot windows with Ubuntu
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
## Setup Docker
pathetic
# After install
```
First look, it may easy to familiar with ubuntu desktop environment(gnome).
Just use like on windows, but when you used to it, you should learn how to use terminal.
```
1. Update your Ubuntu use `software updater` 
2. :3 it time to blow mind, let's install some familiar tools like (unikey):
  + press `Ctrl + Alt + T` to open terminal(similar `cmd` or `shell` on windows)
  Oh, wait. Don't forget to connect to internet :v wired or wireless
  + add ubuntu-vn repo: `sudo add-apt-repository ppa:ubuntu-vn/ppa ` 
  + update all repo source: `sudo apt-get update`
  + install ibus from repo: `sudo apt-get install ibus-unikey`
  + restart ibus: `ibus restart`
  + Go to: [ Settings ] -> [ Region  & Language ] -> [Input Sources ] -> click [ + ] ->  [ Add an Input Source ] -> find `Vietnamese` -> `Vietnamese (Unikey)` ->  `Add`
  + After that you can see language simbol at up-right conner (you can setup shortcut in setting to change language quickly)
*It would be very familiar if you jailbreaked an iphone before, likes add repo source then installs some tweaks :3*
 3. The default text editor of Ubuntu is gedit but you can install notepad++, sublime text or even VS code 
  + you can install it from terminal or ubuntu software
 4. Ubuntu already has Libre Office so you don't really need install MS Office
 5. Sync Ubuntu and Windows time
  + Open terminal then type this command `timedatectl set-local-rtc 1 --adjust-system-clock`
 
# Tools
[Link install all tools-Ubuntu-18-04](/ubuntu/one-for-all.sh)
- Download file
- Open terminal in downloaded directory
- `chmod +x one-for-all.sh`
- `./one-for-all.sh`
- Enter password then wait...
[Link install all tools-ubuntu-20-04]() (Updating..)
