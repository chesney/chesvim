"Author   : Chesney Carolissen
"Plugins  :
" - > Pathogen  - For updating bundles
" - > Matchit   - Matches meta tags using %
" - > NERD_Tree - For directory tree browsing
" - > Surround  - Macro for completing text
" - > snipMate  - Completes coding structures using TAB eg. for<tab>
" - > Align     - Align according to char ie. :Align =
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Tell vim to look inside bundles folder for plugins
"set runtimepath+=$HOME/.vim/bundle

"Key-maps and functions
source ~/.vim/vimrc-keymaps

" Fix some VIM defaults
set nocompatible
set nonumber "Dont display line numbers
set lazyredraw "Dont update display while executing macros
set ttyfast
set backspace=indent,eol,start "backspace works as expected
set nostartofline "Make j/k respect the columns 
set modeline  "Respect modeline of the file
set hidden "Avoid asking to save before hiding
set enc=utf-8 "setlocal spell spelllang=en_us 
set nospell "Useless spell checking
set history=500 "n lines of history to remember
set autoread "Read only when file is changed from outside

filetype off
call pathogen#runtime_append_all_bundles() "Pathogen hack
call pathogen#helptags()
" Enable Filetype plugin after pathogen calls, matchit needs these settings

if has("autocmd")
  filetype plugin indent on "Enable filetype identation
endif

"
" Vim UI
"

"Tabs, spaces and indents
set novisualbell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "Turn tabs into spaces
set autoindent
set smartindent
set nofoldenable "Dont fold code

"Vim screen settings
set mousehide "Hide the mouse pointer while typing
set ruler
set title
set titlestring=%f%(\ [%M]%)  " Show file name at the title
set showcmd "Show current mode in lower right corner
set showmode "Show current mode
set nu
"Set status line
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
"Use same symbols as textmate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Autcomplete settings
set infercase
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete

"Match Settings
set showmatch
set matchpairs=(:),{:},[:],<:>,":"

"Search Settings
set gdefault "make regexp matches everything, instead of just the first one 
set wrapscan "set search scan to wrap lines
set ignorecase "Ignore case when searching
set smartcase "Intelligent smart case searching
set incsearch "Incremental search
set hlsearch "Enable search highlight
set gdefault "Make regexp matches everything, instead of just the first one 
set noerrorbells

"
"Vim Colors and fonts
"
syntax enable "Enable syntax highlight
syntax on
set t_Co=256 "Enable 256 bit terminal color
colorscheme twilight256 "Vim colorscheme - Textmate
set gfn=Monaco\ 10 "Set font
set shell=/bin/bash "Set shell
set textwidth=120 "Set text width

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

