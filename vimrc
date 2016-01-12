set number
" shows row and column number at bottom right corner
set ruler
syntax on

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
   let g:solarized_termtrans = 1
   colorscheme solarized
   set background=dark
 endif



