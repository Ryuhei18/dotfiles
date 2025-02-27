return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup{
      -- size can be a number or function which is passed the current terminal
      size = 20,
      open_mapping = [[<leader>tt]], -- or { [[<c-\>]], [[<c-\>]] } if you also use a Japanese keyboard.
      hide_numbers = true,
      shade_filetypes = {},
      autochdir = false,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = 'float',
      close_on_exit = true,
      
      clear_env = false,
      -- Change the default shell. Can be a string or a function returning a string
      shell = vim.o.shell,
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      -- This field is only relevant if direction is set to 'float'
      float_opts = {
        border = 'curved',
        winblend = 3,
        title_pos = 'center',
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) --  term: terminal
          return term.name
        end
      },
    }
    -- ここでlazygitを開く設定を追加している
    local Terminal = requre('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

  end
}
