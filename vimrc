" Use the Solarized Dark theme
set background=dark
" colorscheme solarized
let g:solarized_termtrans=1

if has('gui_running')
   " do something
else 
   set ruler
   set cursorline
   " if running in terminal
   " tell vim to use 256 colors
   set t_Co=256

   " tell Solarized to use the 256 degraded color mode
   let g:solarized_termcolors=256
 endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show the cursor position
set ruler


