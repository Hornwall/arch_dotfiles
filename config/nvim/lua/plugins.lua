local packer = require("packer")
local use = packer.use

return packer.startup(function()
  use "christoomey/vim-tmux-navigator"

  use "~/code/nightfox.nvim"

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
end)
