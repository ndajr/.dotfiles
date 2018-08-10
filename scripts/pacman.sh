# Official Packages
apps=(
  gedit
  gvim
  tmux
  the_silver_searcher
  docker
  docker-compose
  powerline
  powerline-fonts
  powerline-vim
  chromium
  firefox
  ctags
  unzip
  python
  keepassx2
  filezilla
)

sudo pacman -S --needed "${apps[@]}"

