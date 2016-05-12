filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Other bundles
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-sensible'

call vundle#end()

filetype plugin indent on
