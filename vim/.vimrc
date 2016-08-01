" Layout =====================================================================
set tabstop=4  
set shiftwidth=4
set softtabstop=4
set number
syntax enable
set background=dark
set smartindent
set expandtab
set backspace=indent,eol,start

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

" dein.vm ====================================================================
set nocompatible

set runtimepath^=~/.dotfiles/submodules/vim/dein.vim

call dein#begin('~/.vim/modules')

call dein#add('Shougo/dein.vim')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('altercation/vim-colors-solarized')
call dein#add('rust-lang/rust.vim')

" NERD Tree ==================================================================
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')

map <C-e> :NERDTreeTabsToggle<CR>

let NERDTreeIgnore=['\.dSYM','\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', 'node_modules']
let NERDTreeShowHidden=1

" Ctrl+P =====================================================================

call dein#add('ctrlpvim/ctrlp.vim')

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp)$',
  \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" dein.vm End ================================================================ 
call dein#end()
filetype plugin indent on
if dein#check_install()
	call dein#install()
endif

" Solarized Vim ==============================================================
colorscheme solarized

" Powerline ================================================================== 

silent!	python3 from powerline.vim import setup as powerline_setup
silent!	python3 powerline_setup()
silent!	python3 del powerline_setup
silent!	python from powerline.vim import setup as powerline_setup
silent!	python powerline_setup()
silent!	python del powerline_setup

set guifont=Inconsolata\ for\ Powerline:h15
set laststatus=2
set t_Co=256
set term=xterm-256color
set termencoding=utf-8

