-- https://github.com/folke/tokyonight.nvim
-- A fancy theme

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    config = function() 
        require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        })

        vim.cmd.colorscheme "tokyonight"
    end
}
