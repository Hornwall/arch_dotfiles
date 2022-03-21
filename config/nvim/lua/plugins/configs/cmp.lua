print("LOADING CMP")
local cmp = require("cmp")

vim.opt.completeopt = {
   "menu",
   "menuone",
   "noselect",
}

cmp.setup({
 snippet = {
   expand = function(args)
     require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
   end,
 },
 mapping = {
   ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
   ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
   ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
   ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
   ['<C-e>'] = cmp.mapping({
     i = cmp.mapping.abort(),
     c = cmp.mapping.close(),
   }),
   ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
 },
 sources = cmp.config.sources({
   { name = 'nvim_lsp' },
   { name = 'luasnip' }, -- For luasnip users.
 }, {
   { name = 'buffer' },
 })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
 sources = cmp.config.sources({
   { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
 }, {
   { name = 'buffer' },
 })
})
