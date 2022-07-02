local servers = { 'volar', 'sumneko_lua', 'eslint', 'tsserver', 'pyright' }

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities=capabilities,
        on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer=0 })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer=0 })
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer=0 })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer=0 })
        vim.keymap.set("n", "gx", vim.lsp.buf.code_action, { buffer=0 })
        vim.keymap.set("n", "gf", vim.lsp.buf.format, { buffer=0 })
        vim.keymap.set("n", "gj", vim.diagnostic.goto_next, { buffer=0 })
        vim.keymap.set("n", "gk", vim.diagnostic.goto_prev, { buffer=0 })
        end,
    }
end

local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
