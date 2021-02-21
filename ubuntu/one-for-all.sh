#!/bin/bash
sudo dpkg --add-architecture i386 
sudo add-apt-repository -y ppa:wireshark-dev/stable
sudo add-apt-repository -y ppa:ubuntuhandbook1/audacity 	
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo echo "127.0.0.1 www.sublimetext.com" >> /etc/hosts
sudo echo "127.0.0.1 license.sublimehq.com" >> /etc/hosts

sudo apt-get update 
sudo apt-get install -y apt-transport-https sublime-text zsh build-essential jq strace ltrace curl wget ruby gcc dnsutils netcat gcc-multilib net-tools vim gdb gdb-multiarch python python3 python3-pip python3-dev libssl-dev libffi-dev wget git make procps libpcre3-dev libdb-dev libxt-dev libxaw7-dev python-pip libc6:i386 libncurses5:i386 libstdc++6:i386 ruby-dev wine64 wine32 wireshark audacity bless zip unzip nasm default-jre default-jdk virtualbox
pip install capstone requests pwntools r2pipe ropgadget
pip3 install pwntools keystone-engine unicorn==1.0.2rc1 capstone ropper ropgadget pycrypto

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
chmod +x stegsolve.jar
mkdir bin
sudo mv stegsolve.jar /usr/bin/

# git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# echo "plugins=(zsh-autosuggestions)" >> $HOME/.zshrc
mkdir $HOME/tools 
cd $HOME/tools

git clone https://github.com/sherlly/PCRT.git 

wget https://github.com/yuumi001/sth-weird/blob/main/ubuntu/masm32.zip?raw=true
mv 'masm32.zip?raw=true' masm32.zip
unzip masm32.zip
wget http://ollydbg.de/odbg200.zip
unzip odbg200.zip
sudo rm -f masm32.zip odbg200.zip
git clone https://github.com/radare/radare2 && cd radare2 && sys/install.sh
cd .. 
git clone https://github.com/pwndbg/pwndbg && cd pwndbg && git checkout stable && ./setup.sh
cd .. 
git clone https://github.com/niklasb/libc-database && cd libc-database && ./get
sudo gem install one_gadget
# git clone https://github.com/longld/peda.git ~/peda
# echo "source ~/peda/peda.py" >> ~/.gdbinit
sudo curl -L http://install.ohmyz.sh | sh
cd $HOME
echo "Enter Password"
chsh -s $(which zsh)
wget https://github.com/yuumi001/sth-weird/blob/main/ubuntu/aliases?raw=true
mv 'aliases?raw=true' aliases
sudo cat aliases >> $HOME/.zshrc
source $HOME/.zshrc
echo "Sublime text license key"
echo "—– BEGIN LICENSE —–
Member J2TeaM
Single User License
EA7E-1011316
D7DA350E 1B8B0760 972F8B60 F3E64036
B9B4E234 F356F38F 0AD1E3B7 0E9C5FAD
FA0A2ABE 25F65BD8 D51458E5 3923CE80
87428428 79079A01 AA69F319 A1AF29A4
A684C2DC 0B1583D4 19CBD290 217618CD
5653E0A0 BACE3948 BB2EE45E 422D2C87
DD9AF44B 99C49590 D2DBDEE1 75860FD2
8C8BB2AD B2ECE5A4 EFC08AF2 25A9B864
—— END LICENSE ——"
winecfg
