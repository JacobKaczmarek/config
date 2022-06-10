require'nvim-tree'.setup {}

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { noremap=true })
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeFocus<cr>", { noremap=true })

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
