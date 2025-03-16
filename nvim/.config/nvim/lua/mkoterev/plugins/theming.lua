return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("catppuccin-mocha")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "none" })
            --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
        end
    }
}
