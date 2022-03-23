require("plugins")
require("editor")

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

require("bindings")
