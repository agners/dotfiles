if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


set encoding=utf-8              " setup the encoding to UTF-8
set ls=2                        " status line always visible
set cursorline			" highlight the line under the cursor
set ttyfast			" better screen redraw
set title
set showcmd                     " shows partial commands
set hidden                      " hide the inactive buffers
set ruler                       " sets a permanent rule
set clipboard^=unnamedplus	" use sytem clipboard
set undofile                    " Save undos after file closes
set undodir=$HOME/.vim/undo 
set t_Co=256                   " 256 colors for the terminal

" Don't clear clipboard on exit
autocmd VimLeavePre * call system("xsel -ib", getreg('+'))


set textwidth=80
set colorcolumn=81

filetype plugin indent on     " Required!

" Use vim-plug pluggin system
call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joedicastro/vim-molokai256'
Plug 'tomasr/molokai'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'edkolev/tmuxline.vim'

" Use PlugInstall to install plugins and PlugUpgrade to upgrade vim-plug

call plug#end()

syntax enable
set background=dark            " set a dark background
if has('gui_running')
	colorscheme molokai
else
	colorscheme molokai256
endif


set noshowmode

" Use mouse mode even if tmux uses mouse mode...
set mouse=a

let g:languagetool_lang='en-US'

" Airline configuration
let g:solarized_termcolors=256
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'

" CtrlP configuration
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -c --exclude-standard']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|swp)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

" buffer (tab) emulation...
let mapleader=" "
nmap <leader>t     :enew<CR>
nmap <leader>e     :bnext<CR>
nmap <leader>w     :bprevious<CR>
"nnoremap <C-w>     :bprevious<CR>
"nnoremap <C-e>     :bnext<CR>
"nnoremap <C-t>     :enew<CR>

map <F8>     :make\|copen<CR>

" tab completion
set wildmode=longest,list,full
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
