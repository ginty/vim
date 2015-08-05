set nocompatible              " be iMproved, required
filetype off                  " required

" Use project specific .vimrc files if present
set exrc
set secure

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rust-lang/rust.vim'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ab sfont set guifont=-b&h-lucidatypewriter-medium-r-normal-*-*-140-*-*-m-*-iso8859-15 
" ab bfont set guifont=-b&h-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-iso8859-15 
" set guifont=LucidaTypewriter\ 12
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

colorscheme ir_black
set columns=120 lines=50
set guioptions-=T "hide toolbar
syntax on

set expandtab       " Use spaces rather than tabs
set tabstop=2       " Affects how existing tabs display, 8 spaces aligns to the existing tabs in the firmware code
set shiftwidth=2    " The number of spaces to shift when using >> (could be 8 or any other number you prefer)
set softtabstop=2   " How many spaces to insert when you hit tab (could be 8 or any other number you prefer)
set nowrap
set number
set spell

" reselect a block of text after shifting
":vnoremap < <gv  
":vnoremap > >gv

let mapleader = "\\"
map <Leader>n :NERDTreeToggle<CR> 

