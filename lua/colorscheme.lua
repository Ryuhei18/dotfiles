require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})
vim.cmd([[colorscheme tokyonight-night]])
vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")
