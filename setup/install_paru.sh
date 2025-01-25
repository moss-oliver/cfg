
# Setup Rust
rustup default stable

# Install Paru
if !  command -v paru 2>&1 >/dev/null
then
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -sic --noconfirm
    cd ..
    rm -rf paru
fi

# Install node.js via nvm
if !  command -v node 2>&1 >/dev/null
then
    paru --noconfirm -S nvm
    nvm install node
fi

# Install librewolf
if !  command -v librewolf 2>&1 >/dev/null
then
    #TODO: build from source
    paru --noconfirm -S librewolf-bin
    librewolf about:config
    librewolf https://community.kde.org/Distributions/Packaging_Recommendations#Firefox_configuration
fi

# Install brave
if !  command -v brave 2>&1 >/dev/null
then
    #TODO: Consider other more minimal forks of chromium
    paru --noconfirm -S brave-bin
fi

# Install solo
if !  command -v solo 2>&1 >/dev/null
then
    #TODO: build from source
    paru --noconfirm -S solo2-cli-bin
fi

# Install vscodium
if !  command -v vscodium 2>&1 >/dev/null
then
    paru --noconfirm -S vscodium
fi

paru --noconfirm -S syncthingtray-qt6

paru --clean
