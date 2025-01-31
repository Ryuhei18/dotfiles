local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

keymap("n", "fff", "<cmd>Telescope find_files hidden=true<CR>", opts)
keymap("n", "ffg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "ffb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "ffh", "<cmd>Telescope help_tags<CR>", opts)

keymap("n", "<leader>n :NvimTreeFocus<CR>", opts)
keymap("n", "<C-t>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-n>", ":NvimTreeOpen<CR>", opts)
keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)

keymap("n", "<silent> tt", "<cmd>term<CR><C-\\><C-N>", opts)
keymap("n", "<silent> tt", "<cmd>belowright new<CR><cmd>term<CR><C-\\><C-N>", opts)
keymap("n", "<silent> te", "<cmd>tabnew<CR>", opts)

keymap("n", "sp", "<cmd>split<CR><C-w>w", opts)
keymap("n", "vs", "<cmd>vsplit<CR><C-w>w", opts)

keymap("n", "<C-w><C-w>", "gt", opts)
keymap("n", "<C-w>e", "gT", opts)

keymap("n", "diw", "ciw", opts)
keymap("n", "ciw", "diw", opts)
keymap("n", "xiw", "ciw", opts)

keymap("n", "dd", "d^d$", opts)
keymap("n", "cc", "dd", opts)

keymap("n", "x<up>", "ddkP", opts)
keymap("n", "x<down>", "ddp", opts)

keymap("n", "Y", "y$", opts)

keymap("t", "<Esc>", "<C-\\><C-N>", opts)
keymap("t", "fff", "<C-w><C-n><C-w><C-w><C-\\><C-N>:Telescope find_files hidden=true<CR>", opts)
keymap("t", "ffg", "<C-\\><C-N>:Telescope live_grep<CR>", opts)
keymap("t", "ffb", "<C-\\><C-N>:Telescope buffers<CR>", opts)

keymap("n", "<Tab><Tab>", ">>", opts)
keymap("n", "<Tab><S-Tab>", "<<", opts)

keymap("v", "<Tab><Tab>", ">>gv", opts)
keymap("v", "<Tab><S-Tab>", "<<gv", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<S-left>", "v<left>", opts)
keymap("n", "<S-right>", "v<right>", opts)
keymap("n", "<S-up>", "v<up>", opts)
keymap("n", "<S-down>", "v<down>", opts)

keymap("v", "<S-left>", "<left>", opts)
keymap("v", "<S-right>", "<right>", opts)
keymap("v", "<S-up>", "<up>", opts)
keymap("v", "<S-down>", "<down>", opts)

keymap("n", "<C-left>", "<C-w>h", opts)
keymap("n", "<C-right>", "<C-w>l", opts)
keymap("n", "<C-up>", "<C-w>k", opts)
keymap("n", "<C-down>", "<C-w>j", opts)

keymap("n", "c<up>", "dd", opts)
keymap("n", "c<down>", "dd", opts)

-- ビジュアルモード時vで行末まで選択
keymap("v", "v", "$h", opts)

