local M = {
    "catppuccin/nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
    require("catppuccin").setup {
        integrations = {
            noice = true,
            harpoon = true,
            cmp = true,
            mason = true,
            which_key = true,
            hop = true,
            alpha = true,
            neogit = true,
            -- lsp_trouble = true,
            -- TODO: figure this out for colorscheme AFTER you figure out indent blankline weirdness
            indent_blankline = {
                enabled = true,
                colored_indent_levels = true,
            },
        },
        transparent_background = true,
    }

    vim.cmd.colorscheme "catppuccin"
end

return M
