sudo apt install neovim
sudo apt install docker.io
sudo apt install git
ssh-keygen -o -t rsa -b 4096 -C "email@example.com"
sudo apt install curl
curl https://sh.rustup.rs -sSf | sh
sudo apt install cargo
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
pip3 install --user neovim
nvim
:PlugInstall
:UpdateRemotePlugins
to .tmux.conf
set -sg escape-time 0
set -g default-terminal "screen-256color"
