local packer = require("packer")
local use = packer.use

return packer.startup(function()
  use "christoomey/vim-tmux-navigator"

  use "~/code/nightfox.nvim"
end)
