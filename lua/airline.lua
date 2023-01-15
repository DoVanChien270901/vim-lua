vim.cmd([[
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
                                 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'
                                 
let g:airline#extensions#whitespace#enabled = 0
                                  
let g:airline_section_error=''
                                 
set encoding=utf8
let g:airline_powerline_fonts = 1
]])

vim.api.nvim_set_keymap(
  'n',
  '<Tab>',
  ':bnext<CR>',
  { noremap = true, silent = true }
)

