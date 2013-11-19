execute pathogen#infect()
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif
let g:molokai_original=0
let g:rehash256=1
colorscheme molokai
set background=dark
syntax on
filetype plugin indent on
map <F2> :NERDTreeToggle<CR>
cd ~
:set number
set mouse=a
set backspace=2
