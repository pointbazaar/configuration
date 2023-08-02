set nocompatible

filetype plugin on

syntax on

" show line numbers
set number

" highlight the current line
set cursorline

" show the filename
set laststatus=2

" highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

set list
set listchars=tab:\|\ 

"enable autocompletion?
set wildmode=longest,list,full

set noerrorbells

set background=dark

"ctags stuff, do upward search for tags file
"https://stackoverflow.com/questions/5017500/vim-difficulty-setting-up-ctags-source-in-subdirectories-dont-see-tags-file-i
set tags=tags;/

"ctags command remapping (using these keys bc they are where my arrow keys are
"physically)
"to jump to definition:
nnoremap <C-c> <C-]>
"to go back in the tags stack: <C-t>



"disable the automatic wrapping of long lines
:set textwidth=0
:set wrapmargin=0
