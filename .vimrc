" Vundle configuration
" Call git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'tComment'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/taglist.vim'
call vundle#end()

let mapleader = ","
" Split verticaly
nnoremap <leader>v <C-w>v<C-w>l
" Split horizontaly
nnoremap <leader>h <C-w>s<C-w>l
" Save and exit
nnoremap <leader>z :BW<cr>

set encoding=utf-8

set background=dark
colorscheme gruvbox
set t_ut=

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set number

set showcmd
set showmatch
set incsearch
set hlsearch

set wildignore+=*.aux,*.out,*.toc                           " LaTeX intermediate files
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png,*.mov,*.ttf  " binary images + movies + fonts
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest            " compiled object files
set wildignore+=*.pyc                                       " Python byte code
set wildignore+=*.spl                                       " compiled spelling word lists
set wildignore+=*.sw?                                       " Vim swap files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe                 " Windows

set noswapfile  " No need to keep a swap file
set nobackup    " do not keep a backup file

let python_highlight_all=1
syntax enable

let NERDTreeShowHidden=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>
map <C-o> :TlistToggle<CR>
let NERDTreeIgnore = ['\.pyc$']  " guess who ignors wildignore

let g:ctrlp_map = 'tt'
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_mru_files = 1               " Enable Most Recently Used files feature
let g:ctrlp_dotfiles = 1                " show (.) dotfiles in match list
let g:ctrlp_dont_split = 'NERD_tree_2'  " don't split these buffers
nmap <silent> ff :CtrlPBuffer<CR>
