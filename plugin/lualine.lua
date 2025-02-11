local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    section_separators = {'', ''},
    component_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {'filename', file_status = true, path = 1},
      {'diagnostics', sources = {'nvim_lsp'}}
    },
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ' } },
      'encoding',
      'fileformat',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true,
      path = 1
    } }
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive', 'nvim-tree' }
