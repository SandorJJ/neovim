local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
end)

-- TEMPORARY or not
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

require('luasnip.loaders.from_vscode').lazy_load()

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = "nvim_lsp_signature_help"},
    {name = 'luasnip'},
    {name = 'cmp_luasnip'},
  },
  mapping = cmp_mappings
})
