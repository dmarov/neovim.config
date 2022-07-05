choco install git -y
choco install python3 -y
choco install python2 -y
pip2 install neovim
choco install yarn -y
choco install nvm -y
nvm install 14.16.1
nvm use 14.16.1
nvm on
npm install -g yarn
choco install neovim -y
choco install cmake -y
choco install golang -y
choco install ojdkbuild -y
choco install nvm -y
choco install ruby2.devkit -y
choco install gem -y
gem install neovim
choco install pip -y --allow-empty-checksums
choco install pip2 -y --allow-empty-checksums

#pip2.exe install neovim
pip3 install neovim
pip3 install --user pynvim
npm install -g neovim typescript-language-server

Set-ExecutionPolicy unrestricted

# create folders
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/autoload" -Force
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/plugged" -Force
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/colors" -Force

# install plug
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$home/AppData/Local/nvim/autoload/plug.vim"

# install config
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/init.vim" -Target "$pwd/init-win.vim" -Force
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/ginit.vim" -Target "$pwd/ginit.vim" -Force
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/coc-settings.json" -Target "$pwd/coc-settings.json" -Force

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q
