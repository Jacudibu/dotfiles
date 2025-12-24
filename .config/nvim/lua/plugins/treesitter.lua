-- https://github.com/nvim-treesitter/nvim-treesitter 
-- Parsers and highlighters. A tad confusing to set up, might be borked right now.

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    version = false,

    config = function()
	local configs = require("nvim-treesitter")
	configs.install({
	    "bash",
	    "csv",
	    "dockerfile",
	    "gitignore",
	    "json", 
	    "lua", 
	    "markdown", 
	    "markdown_inline",
	    "query",
	    "rust",
	    "vim",
	    "vimdoc",
	    "yaml"
	})
    end
}
