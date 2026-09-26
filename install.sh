#!/bin/bash
# Установка Vim-конфига и плагинов

# Копируем .vimrc
cp .vimrc ~/.vimrc

# Создаём папку для плагинов
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start

# Клонируем плагины
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/ghifarit53/tokyonight-vim.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/tpope/vim-commentary.git

echo "Готово. Открой Vim."
