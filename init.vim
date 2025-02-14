call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'scrooloose/syntastic'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-jedi'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'sindrets/diffview.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'zbirenbaum/copilot.lua'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }

" for the rails settings
Plug 'tpope/vim-rails'

" for the golang settings
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" call PlugInstall to install new plugins
call plug#end()

lua << EOF
require("CopilotChat").setup {
  -- See Configuration section for options
}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 0

require("nvim-web-devicons").setup()
require("gitsigns").setup()

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}
-- automated settings 
local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("NeoSolarized").setup {
  style = "dark", -- "dark" or "light"
  transparent = true,
  terminal_colors = true,
  enable_italics = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}
vim.cmd([[colorscheme NeoSolarized]])
EOF
set encoding+=utf-8
set fileencoding+=utf-8
set title
set clipboard+=unnamedplus
set cmdheight=2
set completeopt+={ 'menuone', 'noselect' }
set conceallevel=0
set hlsearch
set ignorecase
set pumheight=10
set smartcase
set smartindent
set termguicolors
set timeoutlen=300
set undofile
set updatetime=300
set shell+=fish
set backupskip+={ '/tmp/*', '/private/tmp/*' }
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set number
set numberwidth=4
set signcolumn+=yes
set winblend=0
set wildoptions+=pum
set pumblend=5
set background+=dark
set scrolloff=8
set sidescrolloff=8
set guifont+=monospace:h17

scriptencoding utf-8
syntax enable
syntax on
filetype plugin indent on

execute pathogen#infect()

set incsearch
set smarttab
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap fff <cmd>Telescope find_files hidden=true<cr>
nnoremap ffg <cmd>Telescope live_grep<cr>
nnoremap ffb <cmd>Telescope buffers<cr>
nnoremap ffh <cmd>Telescope help_tags<cr>

nnoremap <leader>n :NvimTreeFocus<CR>
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-n> :NvimTreeOpen<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

nnoremap <silent> tt <cmd>term<CR><C-\><C-N>
nnoremap <silent> tt <cmd>belowright new<CR><cmd>term<CR><C-\><C-N>
nnoremap <silent> te <cmd>tabnew<CR>

nnoremap sp <cmd>split<CR><C-w>w
nnoremap vs <cmd>vsplit<CR><C-w>w

nnoremap <C-w><C-w> gt
nnoremap <C-w>e gT

nnoremap diw ciw
nnoremap ciw diw
nnoremap xiw ciw

nnoremap dd d^d$
nnoremap cc dd

nnoremap x<up> ddkP
nnoremap x<down> ddp

tnoremap <Esc> <C-\><C-N>
tnoremap fff <C-w><C-n><C-w><C-w><C-\><C-N>:Telescope find_files hidden=true<cr>
tnoremap ffg <C-\><C-N>:Telescope live_grep<cr>
tnoremap ffb <C-\><C-N>:Telescope buffers<cr>

nnoremap <Tab><Tab> >>
nnoremap <Tab><S-Tab> <<
vnoremap <Tab><Tab> >>gv
vnoremap <Tab><S-Tab> <<gv

inoremap :wq <Esc>:wq
inoremap :w <Esc>:w
inoremap :q! <Esc>:q!

nnoremap <A-up> {
nnoremap <A-down> }
nnoremap <A-right> e
nnoremap <A-left> b

nnoremap <A-]> <cmd>horizontal resize +5<CR>
nnoremap <A-[> <cmd>horizontal resize -5<CR>
nnoremap <A-}> <cmd>vertical resize +5<CR>
nnoremap <A-{> <cmd>vertical resize -5<CR>

nnoremap <A-S-down> v}
nnoremap <A-S-left> vb
nnoremap <A-S-right> ve
nnoremap <A-S-up> v{

vnoremap <A-S-down> }
vnoremap <A-S-up> {
vnoremap <A-S-left> b
vnoremap <A-S-right> e

nnoremap c<up> dd
nnoremap c<down> dd

autocmd TermOpen * :startinsert
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber

set mouse=

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

