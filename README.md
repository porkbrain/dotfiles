# Personal machine setup

## Utils and essentials

`sudo apt-get update`

```
sudo apt-get install zip unzip \
    software-properties-common \
    apt-transport-https wget
```

`sudo apt install docker.io`

`sudo apt install curl`

## git
`sudo apt install git`

### Setup usernames
`git config --global user.name "Michael"`
`git config --global user.email "bausanomichal@gmail.com"`

### Generate a new ssh key

`ssh-keygen -o -t rsa -b 4096 -C "bausanomichal@gmail.com"`

## Neovim
Install neovim with `sudo apt install neovim`. To add plugins, install following:

```
sudo apt-get install fuse libfuse2 python3-pip ack-grep -y
pip3 install --user neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Let's copy the [nvim config file](init.vim) to `.config` directory. Assuming you are in `dotfiles` repository directory:

```
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
nvim
```

This will open `nvim`. Now install the plugins with:

```
:PlugInstall
:UpdateRemotePlugins
```

## ngrok

```
mkdir -p ~/Applications
wget -O ~/Applications/ngrok.zip "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip"
unzip ~/Applications/ngrok.zip -d ~/Applications
rm ~/Applications/ngrok.zip
~/Applications/ngrok --version
```

## xmonad
### Add PPA to sources list
```
sudo echo "# Adds xmonad tiling manager
deb http://cz.archive.ubuntu.com/ubuntu vivid main universe" >> /etc/apt/sources.list
```

### Update the APT manager
`sudo apt-get update`

### Install xmonad
`sudo apt-get install xmonad`

## VS Code
### Get the Microsoft key
`wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -`

### Add PPA to sources lsit
`sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"`

### Update the APT manager
`sudo apt-get update`

### Install VS Code
`sudo apt install code`

## Rust
Follow installation wizard in `curl https://sh.rustup.rs -sSf | sh`.

### Install package manager
`sudo apt install cargo`

## tmux

`sudo apt-get install tmux`

Let's copy the [tmux config file](.tmux.conf) to the home directory. Assuming you are in `dotfiles` repository directory:

`cp .tmux.conf ~/.tmux.conf`
