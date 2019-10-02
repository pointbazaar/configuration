set nocompatible
filetype plugin on
syntax on

"enable autocompletion?
set wildmode=longest,list,full

"            html, adjusted for bootstrap, with class tags already in there

	"headings
autocmd FileType html inoremap \h1 <h1 class=""> <Enter></h1>
autocmd FileType html inoremap \h2 <h2 class=""> <Enter></h2>
autocmd FileType html inoremap \h3 <h3 class=""> <Enter></h3>
autocmd FileType html inoremap \h4 <h4 class=""> <Enter></h4>
autocmd FileType html inoremap \h5 <h5 class=""> <Enter></h5>

	"bootstrap card stuff. ... so lit... i want to try out configuring
	"other Editors / IDE's like this... to speed up my workflows
	
	" 'k' to go up one line
autocmd FileType html inoremap \card <div class="card"><Enter><Enter></div><Esc>ki

	"list stuff
autocmd FileType html inoremap \ol <ol class="list-group"><Enter><Enter></ol><Esc>ki
autocmd FileType html inoremap \ul <ul class="list-group"><Enter><Enter></ul><Esc>ki
autocmd FileType html inoremap \li <li class="list-group-item"><Enter><Enter></li><Esc>ki

	"img
autocmd FileType html inoremap \img <img src="" class=""/>

	"div
autocmd FileType html inoremap \div <div class=""><Enter><Enter></div><Esc>ki

	"html,body,head
autocmd FileType html inoremap \html <html><Enter><Enter></html><Esc>ki
autocmd FileType html inoremap \head <head><Enter><meta charset="UTF-8"><Enter><Enter></head><Esc>ki
autocmd FileType html inoremap \body <body><Enter><Enter></body><Esc>ki
