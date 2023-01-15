-- open nerdtree with nvim
vim.api.nvim_command('autocmd VimEnter * NERDTree | wincmd p')
-- F5 toggle
vim.api.nvim_set_keymap(
  'n',
  '<F5>',
  ':NERDTreeToggle<CR>',
  { noremap = true, silent = true }
)
-- icon
vim.cmd([[
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeDirArrowExpandable = '▾'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
]])
