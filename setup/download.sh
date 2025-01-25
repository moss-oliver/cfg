sudo pacman --needed -S git
cd ~
git clone https://github.com/moss-oliver/cfg tmp
mv tmp/.git .
rm -rf tmp
git reset --hard

cd setup

chmod +x ./setup.sh
chmod +x ./install_pacman.sh
chmod +x ./install_paru.sh
chmod +x ./config_kde.sh

./setup.sh
