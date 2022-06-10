local servers = { 'volar' }

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer=0 })
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer=0 })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer=0 })
        vim.keymap.set("n", "gj", vim.lsp.diagnostic.goto_next, { buffer=0 })
        vim.keymap.set("n", "gk", vim.lsp.diagnostic.goto_prev, { buffer=0 })
        end,
    }
end
