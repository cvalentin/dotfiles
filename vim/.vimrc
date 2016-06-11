" Layout =====================================================================
set tabstop=4  
set shiftwidth=4
set softtabstop=4
set number
syntax enable
set background=dark
set smartindent
set expandtab

" Navigation ================================================================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>

" AutoComplete ===============================================================
set wildmenu
set wildmode=longest:full,full

" Spellcheck =================================================================
set spell

" Shortcuts ==================================================================
inoremap jk <Esc>

" NeoBundle ==================================================================
if has('vim_starting')
    set nocompatible               
    set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/Users/carlo/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle Bundles ==========================================================
NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'wincent/command-t'
NeoBundle 'thinca/vim-ref'

" NERD Tree ==================================================================
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'

map <C-e> <plug>NERDTreeTabsToggle<CR>

let NERDTreeIgnore=['\.dSYM','\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', 'node_modules']
let NERDTreeShowHidden=1

" NeoBundle End ============================================================== 
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" Solarized Vim ==============================================================
colorscheme solarized

" Powerline ================================================================== 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set guifont=Inconsolata\ for\ Powerline:h15
set laststatus=2
set t_Co=256
set term=xterm-256color
set termencoding=utf-8

