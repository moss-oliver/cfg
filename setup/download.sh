pacman --needed -S git
cd ~
git clone https://github.com/moss-oliver/cfg tmp
mv tmp/.git .
rm -rf tmp
git reset --hard

chmod +x ./setup/setup.sh
chmod +x ./setup/install_pacman.sh
chmod +x ./setup/install_paru.sh
chmod +x ./setup/config_kde.sh

./setup/setup.sh
