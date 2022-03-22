require("plugins")
require("editor")
require("vim-test")
require("plugins.configs.cmp")
require("nvim-lsp")

local g = vim.g

g.mapleader = ","

local nightfox = require("nightfox")
nightfox.setup({
  fox = "hybridfox",
  transparent = true,
  styles = {
    comments = "italic",
    keywords = "bold",
    functions = "italic,bold"
  }
})
nightfox.load()

require("nvim-tree").setup {
}

require("bindings")
