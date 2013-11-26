let mapleader=" "
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>
nnoremap <Leader>q :noh<return><esc>
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
set nowrap
set hlsearch
set mouse=a
set backspace=2
set number
set background=dark
cd ~
execute pathogen#infect()
syntax on
filetype plugin indent on
map <F2> :NERDTreeToggle<CR>
let g:molokai_original=1
if has("gui_running")
	set cursorline
	set gfn=Inconsolata\ 13
elseif $COLORTERM == 'gnome-terminal'
	set t_Co=256
	let g:rehash256=1
endif
colorscheme molokai
