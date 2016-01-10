syntax on
filetype plugin indent on

"Show statusbar
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-vinegar'
Bundle 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags




"Set color scheme to desert
colorscheme desert


"To set the relatice line number with the current line number
set relativenumber
set number

if &term =~ "xterm"
"   256 colors
     let &t_Co = 256
       " restore screen after quitting
         let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
           let &t_te = "\<Esc>[?47l\<Esc>8"
             if has("terminfo")
                 let &t_Sf = "\<Esc>[3%p1%dm"
                     let &t_Sb = "\<Esc>[4%p1%dm"
                       else
                           let &t_Sf = "\<Esc>[3%dm"
                               let &t_Sb = "\<Esc>[4%dm"
                                 endif
                                 endif

