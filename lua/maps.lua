local keymap = vim.keymap

-- do not yank with d
keymap.set('n', 'd', '"_d')

-- increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- select all
keymap.set('n', '<C-a>', 'ggVG')

-- new tab
keymap.set('n', 'te', ':tabedit<Return>')
-- split windown
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- move windown
keymap.set('n', '<Space>', '<C-w>w', opts)
keymap.set('n', '<c-j>', '<c-w>j', opts)
keymap.set('n', '<c-h>', '<c-w>h', opts)
keymap.set('n', '<c-k>', '<c-w>k', opts)
keymap.set('n', '<c-l>', '<c-w>l', opts)

-- resize windown
--keymap.set('n', '<C-w><left>', '<C-w><')
--keymap.set('n', '<C-w><right>', '<C-w>>')
--keymap.set('n', '<C-w><up>', '<C-w>+')
--keymap.set('n', '<C-w><down>', '<C-w>-')
-- coppy
--keymap.set('n', 'y', '"+y', opts)
--keymap.set('n', 'p', '"+p', opts)
keymap.set('n', '<S-x>', 'V"+x', opts)
--keymap.set('n', 'x', '"+x', opts)
--keymap.set('n', 'p', '"+p', opts)



-- tag ruby in html
vim.api.nvim_set_keymap(
  'i',
  '<C-r>',
  '<% %> <Esc>3h<Insert>',
  { noremap = true, silent = true }
)

-- slim syntax highlighting
vim.cmd[[autocmd BufNewFile,BufRead *.slim setlocal filetype=slim]]
vim.cmd([[let g:indentLine_char_list = ['|', '¦', '┆', '┊'] ]])


vim.cmd[[
let g:closetag_filenames = '*.html.erb,*.html'
autocmd BufNewFile, BufRead *.html.erb set filetype-=html filetype-=rb
]]   
