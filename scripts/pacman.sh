# Official Packages
apps=(
  git
  vim
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
)

sudo pacman -S --needed "${apps[@]}"

