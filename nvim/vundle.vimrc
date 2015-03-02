filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Other bundles
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-sensible'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'Rip-Rip/clang_complete'

call vundle#end()

filetype plugin indent on
