#!/usr/bin/env sh

#
# Handle setting up on a new MacOS Machine.
#

set -e

yesno() {
  read -n1 -p "$1 [Y/n] " response
  case "$response" in 
     [yY]) echo "1";;
     [nN]) echo "0";;
     ?) return yesno "$1";;
  esac
}

install_xcode() {
  echo "[+] Xcode installed"
  # xcode-select install
}

install_homebrew() {
  if [[ $(which brew) ]]; then
    echo "[-] Homebrew is already installed, skipping step"
  else
    # /bin/bash -c "$(curl -fsS https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "[+] Homebrew installed"
    
    # brew update
    echo "[+] Homebrew Updated"
    
    # brew upgrade
    echo "[+] Homebrew Upgraded Packages"
  fi
}

install_homebrew_packages() {
  if [[ -f ~/Brewfile ]]; then
    if [[ $(yesno "> Brew bundle already exists, do you want to overwrite this?") == "0" ]]; then
      echo "[-] Brew Bundle Not Installed"
      return
    fi
  fi

  # ln -s Brewfile ~/Brewfile
  # brew bundle
  echo "[+] Brew Bundle Installed"

  # brew cleanup
}

copy_dotfiles() {
  if [[ $(yesno "> **WARNING** This will overwrite existing files, are you sure you want to continue?") == "0" ]]; then
    echo "[-] Dotfiles not installed"
    return
  fi

  echo "[+] Dotfiles installed"
}

update_shell() {
  brew_prefix=$(brew --prefix)
  declared_shell=$(grep "$brew_prefix/bin/bash" /etc/shells)

  if [[ -z "$declared_shell" ]]; then
      echo "[+] Updating shell to Brewed Bash"
      #echo "$brew_prefix/bin/bash" | sudo tee -a /etc/shells;
      #chsh -s "$brew_prefix/bin/bash"
  else
      echo "[-] Shell already Brewed Bash"
  fi
}

install_xcode
install_homebrew
install_homebrew_packages
update_shell
copy_dotfiles
