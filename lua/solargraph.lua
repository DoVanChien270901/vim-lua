 -- Require LSP configuration from the plugin so we can attach solargraph to it
lspconfig = require "lspconfig"
util = require "lspconfig/util"
lspconfig.solargraph.setup {
  cmd = { "solargraph", "stdio"},
  filetypes = { "ruby" },
  root_dir = util.root_pattern{"Gemfile", ".git"},
  settings = {
    solargraph = {
      diagnostics = true
    },
  },
}
