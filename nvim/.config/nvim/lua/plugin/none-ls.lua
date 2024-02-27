local M = {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}

function M.config()
    local null_ls = require "null-ls"

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    -- TODO: formatting on <leader>le
    null_ls.setup {
        debug = false,
        sources = {
            formatting.stylua,
            formatting.prettier,
            formatting.black,

            formatting.prettier.with {
                extra_filetypes = { "toml", "yaml" },
                -- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
            },

            -- formatting.eslint,
            -- diagnostics.flake8,

            -- null_ls.builtins.completion.spell,
        },
    }
end

return M
