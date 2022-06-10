require('telescope').setup {
    defaults = { file_ignore_patterns = { "node_modules" }},
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                   -- the default case_mode is "smart_case"
        }
    }
}

require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { noremap=true })
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { noremap=true })
vim.keymap.set("n", "<leader>tr", "<cmd>Telescope grep_string<cr>", { noremap=true })
vim.keymap.set("n", "<leader>te", "<cmd>Telescope file_browser<cr>", { noremap=true })
vim.keymap.set("n", "<leader>td", "<cmd>Telescope diagnostics<cr>", { noremap=true })

