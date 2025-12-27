-- https://github.com/lewis6991/gitsigns.nvim
-- Visual eye candy for files in git repositories

return {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
        require("gitsigns").setup()
    end
}
