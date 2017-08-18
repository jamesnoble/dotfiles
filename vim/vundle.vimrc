filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Other bundles
Plugin 'chriskempson/base16-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'elzr/vim-json'

call vundle#end()

filetype plugin indent on
