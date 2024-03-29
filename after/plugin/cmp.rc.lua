local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

-- change background color
vim.api.nvim_set_hl(0, "MyMenu", { bg = "#131516", fg = "#2AA198" })
--vim.cmd([[hi CursorLine term=bold cterm=bold guibg=Grey40]])
vim.api.nvim_set_hl(0, "MenuHover", { bg = "#2AA198", fg = "#131516", bold = true, term=bold, cterm=bold})
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    -- tab go to the next suggest item
    ['<Tab>'] = cmp.mapping.select_next_item(),
    --['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    --['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --['<C-d>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
-- winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:MyMenu,CursorLine:MyMenuSel,Search:None",
  window = {
    documentation = cmp.config.window.bordered({
      winhighlight = "Normal:MyMenu,FloatBorder:MyMenu,CursorLine:MyMenuSel,Search:None",
    }),
    completion = cmp.config.window.bordered({
      --winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
      winhighlight = "Normal:MyMenu,FloatBorder:MyMenu,CursorLine:CursorLine,Search:None",
    }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menu,menuone,noinsert
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
