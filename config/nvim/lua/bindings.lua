function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- Bind splitting
map("n", "<leader>h", ":rightbelow split<CR>")
map("n", "<leader>v", ":rightbelow vsplit<CR>")

map("n", "<leader>cs", ":source $MYVIMRC<CR>")

-- nvimtree
map("n", "<C-n>", ":NvimTreeToggle<CR>", {silent = true})

map("n", "<C-P>", "<cmd>Telescope find_files<CR>")
map("n", "<C-S>", "<cmd>Telescope live_grep<CR>")
