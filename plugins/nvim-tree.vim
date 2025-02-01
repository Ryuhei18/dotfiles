" default mappings for nvim-tree
nnoremap <leader>n :NvimTreeFocus<CR>
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-n> :NvimTreeOpen<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

" also map with Leader, since ctrl is hard to reach on Mac
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>f :NvimTreeFindFile<CR>

let g:nvim_tree_quit_on_open = 1 
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
" let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, 0 will create the folder in the current working directory
let g:nvim_tree_refresh_wait = 500
let g:nvim_tree_window_picker_exclude = {
  \ 'filetype': [
  \   'notify',
  \   'packer',
  \   'qf',
  \ ],
  \ 'buftype': [
  \   'terminal',
  \ ],
  \ }

" dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'readme.md': 1, 'makefile': 1 }
let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1 }
