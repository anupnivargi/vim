" Vim Configuration
" Author- Anup Nivargi
" ~/.vimrc
" =================================================================================================
"
call pathogen#infect()
call pathogen#helptags()

set nocompatible                  " Load VIM in nocompatible mode to use enhanced features

set shell=/bin/bash               " Set the shell path

set history=700                   " Set Command history

filetype plugin indent on         " Enable filetype plugin and indentation

set autoread                      " Update file when changed from outside

set hidden                        " Handle multpile buffers better

"Ignore directories and files
"Version Control Files
set wildignore+=.git,.svn
"Images
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.bmp,*.ttf,*.otf
"Other
set wildignore+=*.swf,*.air,*.psd,*.ttf,*.woff,*.svg,*.eot,*.mp3,*.wav,*.mov,*.avi,*.mpg,*.ogg,*.mp4
"Tmp and Log
set wildignore+=tmp,log
" Visual Information
set showmode                      " Show the current mode
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set number                        " Show line numbers
set wildmenu                      " Enhanced command line completition
set laststatus=2                  " Show status line all the time. Takes a extra line on the screen
set cmdheight=2                   " The commandbar height
"set ruler                        " Always show current position

"Set the tag file search order
set tags=./tags;

" Error handeling
set noerrorbells
set novisualbell

" Visual Enhancement
colorscheme desert
syntax enable                     " Enable syntax highlighting
set cursorline                    " Highlight the cursor line
set showmatch                     " Highlight matching bracets
set magic                         " Set magic on, for regular expressions

" Backups
set nobackup
set nowritebackup
set noswapfile

" Tabs and indentation
set expandtab                     " Use spaces instead if tabs
set autoindent                    " Auto indent
set smartindent                   " Smart indent
set shiftwidth=2                  " Maintain 2 level indentation
set tabstop=2                     " 2 level indentation for Tab
set textwidth=79                  " Wrap lines
autocmd BufNewFile,BufRead * setlocal formatoptions+=t

" Search
set ignorecase                    " Case insensitive search
set smartcase                     " Case sensitive when search contains capital
set hlsearch                      " Highlight search things
set incsearch                     " Incremental search

" autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" Aliases
let mapleader = ","
map <leader>n o<ESC><CR>
map <A-j> gj
map <A-k> gk
map <F12> :NERDTreeToggle<CR>
"Use F5 to auto indent full file and jump to last cursor position
map   <silent> <F5> mmgg=G'm
"Use F5 to auto indent full file and jump to last cursor position in insert
"mode
imap  <silent> <F5> <Esc> mmgg=G'm
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|docs'

nnoremap <leader>t :CtrlP<CR>

let g:ruby_indent_access_modifier_style="indent" 
