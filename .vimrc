" General configuration

" Basic settings
set nowrap
set hlsearch
set mouse=a
set backspace=2
set number
filetype plugin indent on

" Functions
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc

" mappings
let mapleader=" "

"" Enable Ctrl+s to save file {
	"" REMEMBER TO DISABLE <C-S> in .bashrc by adding stty stop undef
	noremap <C-s> :update<CR>
	vnoremap <C-s> <C-c>:update<CR>
	inoremap <C-s> <C-o>:update<CR>
"" }

nnoremap <Leader>q :noh<return><esc>
nnoremap <C-n> :call NumberToggle()<cr>

"" Uncomment this section if not using vim on servers.
"" settings with plugins
"
"execute pathogen#infect()
"map <F2> :NERDTreeToggle<CR>
"
"" Theme settings
"set background=dark
"let g:molokai_original=1
"if has("gui_running")
"	set cursorline
"	set gfn=Inconsolata\ 13
"	colorscheme molokai
"elseif $COLORTERM == 'gnome-terminal'
"	set t_Co=256
"	let g:rehash256=1
"	colorscheme molokai
"endif
