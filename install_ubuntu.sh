#!/usr/bin/env sh
# Get Sudo Access Now
sudo -v 

# Update Packges
apt update -y
apt upgrade -y

# Install Tooling
apt install git -y
apt install neovim -y
apt install terminator -y
apt install curl -y
apt install nodejs -y
apt install php -y
apt install mysql-client -y
apt install openvpn -y
apt install ruby -y

# Install ZSH
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install Fonts
mkdir ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O ~/.fonts
fc-cache -f -v

# Install Programs
snap install spotify
snap install phpstorm --classic
snap install brave
snap install chromium
snap install discord
snap install skype --classic
snap install postman
snap install thunderbird
snap install slack --classic
snap install filezilla --beta
snap install vscode --classic
snap install sublime-text --classic
snap install mysql-workbench-community 

# Setup dotfiles
git clone https://www.github.com/samjuk/terminal-shortcuts.git /opt/sam

# Install CyberSec Tooling
git clone https://github.com/sherlock-project/sherlock.git /opt/sherlock
git clone https://github.com/maurosoria/dirsearch /opt/dirsearch
git clone https://github.com/internetwache/GitTools /opt/gittools
git clone https://github.com/wpscanteam/wpscan /opt/wpscan
git clone https://github.com/danielmiessler/SecLists /opt/seclists
git clone https://github.com/rapid7/metasploit-framework /opt/metasploit
git clone https://github.com/offensive-security/exploitdb /opt/exploitdb

# Setup Ubuntu


# Update Shell
chsh -s $(which zsh)
