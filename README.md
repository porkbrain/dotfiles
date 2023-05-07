# Personal machine setup

## Install useful programs

```
sudo apt-get update

sudo apt-get -y install \
    zip unzip curl software-properties-common  \
    apt-transport-https wget git neovim
```

## git

### Setup usernames

`git config --global user.name "porkbrain"`

`git config --global user.email "git@porkbrain.com"`

### Generate a new ssh key

`ssh-keygen -o -t rsa -b 4096 -C "git@porkbrain.com"`

## Neovim

To add plugins, install following:

```
sudo apt-get install fuse libfuse2 python3-pip ack-grep -y
pip3 install --user neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Let's copy the [nvim config file](init.vim) to `.config` directory. Assuming
you are in `dotfiles` repository directory:

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

## Rust

Follow installation wizard in `curl https://sh.rustup.rs -sSf | sh`.
