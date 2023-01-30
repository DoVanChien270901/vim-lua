return require('packer').startup(function(use)
  -- theme
  use 'doums/darcula'
	-- Configuration is going here
	use 'wbthomason/packer.nvim'
  -- new
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use {
      'nvim-treesitter/nvim-treesitter',
      rub = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'akinsho/nvim-bufferline.lua'
  -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'tomasiser/vim-code-dark'
  use 'folke/lsp-colors.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use { 'glepnir/lspsaga.nvim', version = 'v0.2.2' }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-cmdline'

  -- nvim for file exploring
  use {
    'preservim/nerdtree',
    requires = {'ryanoasis/vim-devicons'}
  }
  use {
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
    'Xuyuanp/nerdtree-git-plugin'
  }
  use 'morhetz/gruvbox'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'alvan/vim-closetag'
  use 'airblade/vim-gitgutter'
  use 'jiangmiao/auto-pairs'
  -- slim syntax highlighting
  use {
    'gmarik/Vundle.vim',
    'slim-template/vim-slim'
  }
  -- comment code
  use 'preservim/nerdcommenter'
  use 'altercation/vim-colors-solarized'
  use 'xiyaowong/nvim-transparent'             -- Transparent
  --syntax highlighting
  use 'jlcrochet/vim-ruby'
  use 'Yggdroot/indentLine'
  -- find like ag
  use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } })
  -- complete
  use 'prabirshrestha/asyncomplete.vim'
  use 'prabirshrestha/asyncomplete-lsp.vim'
end)
