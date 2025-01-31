local opts = { nnoremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- New tab
keymap("n", "te", ":tabedit", opts)
-- 新しいタブを一番右に作る
keymap("n", "tn", ":tabnew<Return>", opts)
-- move tab
keymap("n", "<C-w>e", "gT", opts)
keymap("n", "<C-w><C-w>", "gt", opts)

-- Split window
keymap("n", "sp", ":split<Return><C-w>w", opts)
keymap("n", "vs", ":vsplit<Return><C-w>w", opts)

-- Select all
keymap("n", "A", "gg<S-v>G", opts)

-- Do not yank with x
keymap("n", "x", '"_x', opts)

-- Delete a word backwards
keymap("n", "dw", 'vb"_d', opts)

keymap("n", "diw", "ciw", opts)
keymap("n", "ciw", "diw", opts)
keymap("n", "xiw", "ciw", opts)

keymap("n", "x<up>", "ddkP", opts)
keymap("n", "x<down>", "ddp", opts)

-- ;でコマンド入力( ;と:を入れ替)
keymap("n", ";", ":", opts)

-- 行末までのヤンクにする
keymap("n", "Y", "y$", opts)

-- <Space>q で強制終了
keymap("n", "<Space>q", ":<C-u>q!<Return>", opts)

-- ESC*2 でハイライトをやめる
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts) 

-- Insert --
-- Press jk fast to exit insert mode

keymap("i", "jk", "<Esc>", opts)

-- コンマの後に自動的にスペースを挿入
keymap("i", ",", ",<Space>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- ビジュアルモード時vで行末まで選択
keymap("v", "v", "$h", opts)

-- 0番レジスタを使いやすくした
keymap("v", "<C-p>", '"0p', opts)
