set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/a.vim'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-commentary'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set number
set hidden

set hlsearch
set incsearch
set showmatch

syntax enable
set background=dark

set backspace=2

set autoindent
set smartindent
set wrap

set tabstop=4
set shiftwidth=4

autocmd FileType cmake setlocal expandtab

set scrolloff=5

nnoremap j gj
nnoremap k gk

set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set laststatus=2

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set path=.,/usr/include,~/repos/viv/src,~/repos/viv/protocols,,

autocmd BufEnter * EnableStripWhitespaceOnSave
let g:better_whitespace_filetypes_blacklist=[]

" this line is in /etc/vim/vimrc, but doesn't seem to be working for some reason
" it works if I put it here
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
