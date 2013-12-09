" General configuration

" Basic settings
set nowrap
set mouse=a
set backspace=2
set relativenumber
filetype plugin indent on
syntax on
set nocompatible
set wildmenu
set wildmode=list:longest,full
set hlsearch
set incsearch

"set list
"set listchars=tab:\|\ 
"" To change tab to space use expandtab
set tabstop=4 shiftwidth=4 noexpandtab

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
map <F3> :vsplit $MYVIMRC<CR>
map <F4> :so $MYVIMRC<CR>
nnoremap Q <nop>
nnoremap <Leader>h :noh<return><esc>
nnoremap <C-N> :call NumberToggle()<CR>

nnoremap <C-F> :tabn<CR>
nnoremap <C-B> :tabp<CR>
"" Insert mode mappings for home, end, newline up and newline down
nnoremap <C-H> <C-O>I
nnoremap <C-J> <C-O>o
nnoremap <C-K> <C-O>O
nnoremap <C-L> <C-O>A


execute pathogen#infect()
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
" Theme settings
set background=dark
let g:molokai_original=1
if has("gui_running")
	set cursorline
	set gfn=Inconsolata\ 13
	colorscheme molokai
elseif $COLORTERM == 'gnome-terminal'
	set cursorline
	set t_Co=256
	let g:rehash256=1
	colorscheme molokai
else
	colorscheme desert
endif

" Uncomment this section if not using vim on servers.

"" Enable Ctrl+s to save file {
	"" REMEMBER TO DISABLE <C-S> in .bashrc by adding stty stop undef
	nnoremap <C-S> :update<CR>
	vnoremap <C-S> <C-C>:update<CR>
	inoremap <C-S> <C-O>:update<CR>
"" }

