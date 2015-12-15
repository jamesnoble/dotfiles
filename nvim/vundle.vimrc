filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Other bundles
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-sensible'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on
