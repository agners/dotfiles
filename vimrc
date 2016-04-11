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

" Don't clear clipboard on exit
autocmd VimLeavePre * call system("xsel -ib", getreg('+'))


set textwidth=80
set colorcolumn=81

filetype plugin indent on     " Required!

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" falstaff's Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'joedicastro/vim-molokai256'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'ctrlpvim/ctrlp.vim'

" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim'
" Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" gist repos
" NeoBundle 'gist:Shougo/656148', {
" \ 'name': 'everything.vim',
" \ 'script_type': 'plugin'}
" Non git repos
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

call neobundle#end()

syntax enable
set background=dark            " set a dark background
set t_Co=256                   " 256 colors for the terminal
if has('gui_running')
	colorscheme molokai
else
	colorscheme molokai256
endif


set noshowmode
" Airline configuration
let g:airline_theme='powerlineish'
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
nnoremap <C-w>     :bprevious<CR>
nnoremap <C-e>     :bnext<CR>
nnoremap <C-t>     :enew<CR>

map <F8>     :make\|copen<CR>

" tab completion
set wildmode=longest,list,full
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
