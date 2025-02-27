local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = "all",
  -- autotag
  autotag = {
    enable = true,
  }
})
