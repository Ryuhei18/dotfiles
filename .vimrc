set updatetime=100

set tabstop=4
set shiftwidth=4

set ignorecase
set autoindent
set ruler

set title
set noshowmode

set wildmenu
set ruler

set showmatch

set foldlevel=100

set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom

set laststatus=2
syntax enable
syntax on
filetype plugin indent on

execute pathogen#infect()

set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set incsearch
set smartcase
set smarttab
set number
set laststatus=2

colorscheme pablo

call plug#begin()

" List your plugins here
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
"Plug 'Eliot00/git-lens.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

" NERDTree: reasonable defaults from webinstall.dev/vim-nerdtree
source ~/.vim/plugins/nerdtree.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" When MacOS
" Ref: https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
if has('macunix')
  nnoremap ∆ :m .+1<CR>==
  nnoremap ˚ :m .-2<CR>==
  inoremap ∆ <Esc>:m .+1<CR>==gi
  inoremap ˚ <Esc>:m .-2<CR>==gi
  vnoremap ∆ :m '>+1<CR>gv=gv
  vnoremap ˚ :m '<-2<CR>gv=gv
endif

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

let g:ale_fixers = {
    \ 'ruby': ['rubocop'],
    \ }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

