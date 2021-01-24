#!/bin/bash
sudo dpkg --add-architecture i386 
sudo add-apt-repository -y ppa:wireshark-dev/stable
sudo add-apt-repository -y ppa:ubuntuhandbook1/audacity 	
sudo apt-get update 
sudo apt-get install -y build-essential jq strace ltrace curl wget ruby gcc dnsutils netcat gcc-multilib net-tools vim gdb gdb-multiarch python python3 python3-pip python3-dev libssl-dev libffi-dev wget git make procps libpcre3-dev libdb-dev libxt-dev libxaw7-dev python-pip libc6:i386 libncurses5:i386 libstdc++6:i386 ruby-dev wine64 wine32 wireshark audacity bless zip unzip
pip install capstone requests pwntools r2pipe ropgadget
pip3 install pwntools keystone-engine unicorn==1.0.2rc1 capstone ropper ropgadget

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
cd $HOME
wget https://github.com/yuumi001/sth-weird/blob/main/ubuntu/aliases?raw=true
mv 'aliases?raw=true' aliases
sudo cat aliases >> $HOME/.bashrc
source $HOME/.bashrc
winecfg
