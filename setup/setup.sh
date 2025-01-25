#!/bin/bash
do_prompt () {
    while true; do
        for i in "$*"; do echo "$i"; done;
        read -p "(y/n)" yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

if do_prompt "Do you want to install pacman packages?"; then
    ./install_pacman.sh
fi

if do_prompt "Do you want to install paru and paru packages?"; then
    ./install_paru.sh
fi

# Set shell to zsh
if [ "$(basename -- "$SHELL")" != "zsh" ]; then
    chsh -s /usr/bin/zsh
fi

if do_prompt "Do you want to configure KDE?"; then
    ./config_kde.sh
fi

if do_prompt "Do you want to setup signal?"; then
    signal-desktop > /dev/null 2>&1 &
fi

if do_prompt "Do you want to setup syncthing?"; then
    systemctl --user enable syncthing.service
    systemctl --user start syncthing.service
    librewolf http://127.0.0.1:8384/
fi

if do_prompt "Do you want to setup keepass?"; then
    librewolf https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/
    librewolf https://wiki.archlinux.org/title/KeePass#Browser_integration
fi

if do_prompt "Do you want to setup ssh keys?"; then
    read -p "enter your email: " email
    ssh-keygen -t ed25519 -C $email -P "" -f ~/.ssh/id_ed25519 -q
    echo "Public key saved to ~/.ssh/id_ed25519.pub"
fi

if do_prompt "SETUP COMPLETE! Do you want to restart now?"; then
    reboot
fi
