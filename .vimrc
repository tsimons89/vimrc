syntax on
filetype plugin indent on
set nowrap

"Show status bar
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

"Use the built in man page plugin (ex Man <favorite man page>)
runtime! ftplugin/man.vim

" Map the escape key to jj
inoremap jj <Esc>

"Remap the Man command to Shift-K
nnoremap K :Man <cword> 

"Swap H and L (to top and bottom of page)
noremap H L
noremap L H

"Close braces on the next line
inoremap {<CR> {<CR><CR>}<Up><C-T>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-vinegar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-unimpaired'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


"Set color scheme to desert
colorscheme desert


"To set the relative line number with the current line number
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

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_css_checkers=['prettycss']
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_c_checkers=['gcc']
let g:ycm_show_diagnostics_ui = 0

"Set spell check
set spell spelllang=en_us
