filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Let vundle manage itself
Bundle 'gmarik/vundle'

" Other bundles
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/vitality.vim'
Bundle 'tpope/vim-sensible'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-fugitive'
Bundle 'Rip-Rip/clang_complete'

filetype plugin indent on
