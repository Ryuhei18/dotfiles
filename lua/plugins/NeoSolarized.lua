local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
  return
end

-- Default Setting for NeoSolarized

NeoSolarized.setup {
  style = "dark",
  transparent = true,
  terminal_colors = true,
  enable_italics = true,
  styles = {
    -- Style to be applied
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true, -- true/false
    undercurl = true, -- true/false
  },
  -- Add specific highlights
  on_highlights = function(highlights, colors)
    -- highlights.Include.fg = colors.red --Using `red` foregroup for Includes
  end,
}
-- Set colorscheme to NeoSolarized
vim.cmd([[
  try
    colorscheme NeoSolarized
  catch /^Vim\%((\a\+)\)\=:E185
    colorscheme default
    set background=dark
  endtry
]])
