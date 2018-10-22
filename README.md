# .dotfiles (and other stuff)

## info
SO: ubuntu 18  
IDE: vim  

## installation
sudo ./scripts/packages.sh  
sudo ./scripts/install.sh  
sudo ./scripts/powerline.sh  

## terminal appearence
Create new profile with:
Text > Window Size = 120 x 40
Text > Font = Fire Code Medium 14
Colors > Background = #1C1C1C


### vim
```
cd ~/.dotfiles/.vim && git submodule update --init  
vim  
,ev  
:w  
:PluginInstall  
:GoInstallBinaries  
```
