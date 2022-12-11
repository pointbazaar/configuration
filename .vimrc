set nocompatible

filetype plugin on
filetype indent on

syntax on

" show line numbers
set number

" highlight the current line
set cursorline

" highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"enable autocompletion?
set wildmode=longest,list,full

set noerrorbells

set background=dark
