# Nvim Lua Config

<img width='80%' src='https://i.postimg.cc/sx86FDZY/lua-config.png'>

## Requirements 

> if you work with nodejs: 
* Nodejs 14.X 
* Typescript
* neovim package npm

1. Tmux
2. Packer.Nvim
3. some C compiler like gcc, clang
4. fzf
5. rg - ripgrep


## Optional

* lolcat
* fd
* bat 

## Setup Config

1. Copy the files in your config folder

> Examples

* Windows: ~/AppData/Local/nvim/

* Linux: ~/.config/nvim/

2. Install packer or enter in Neovim and press yes in the next message

Download Packer? (y for yes)

To install packer manualy enter the next command

**In linux**
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

**In windows**
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

3. Enter the next command in neovim 

```
PackerInstall
```