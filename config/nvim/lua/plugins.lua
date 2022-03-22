local packer = require("packer")
local use = packer.use

return packer.startup(function()
  use "wbthomason/packer.nvim"
  use "christoomey/vim-tmux-navigator"
  use "~/code/nightfox.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"

  use "tpope/vim-surround"
  use "tpope/vim-eunuch"
  use "tpope/vim-vinegar"
  use "tpope/vim-unimpaired"
  use "tpope/vim-fugitive"
  use "tpope/vim-rails"
  use "tpope/vim-dispatch"
  use "vim-test/vim-test"
  use "FooSoft/vim-argwrap"
  use "sheerun/vim-polyglot"
  use "godlygeek/tabular"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind-nvim"
  use "williamboman/nvim-lsp-installer"

  -- CMP
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-vsnip"
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = [[require("plugins.configs.nvimtree")]],
  }

  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
end)
