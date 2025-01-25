pacman --needed -S git
cd ~
git clone https://github.com/moss-oliver/cfg tmp && mv tmp/.git . && rm -rf tmp && git reset --hard
./setup/setup.sh
