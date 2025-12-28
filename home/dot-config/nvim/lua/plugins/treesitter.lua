-- https://github.com/nvim-treesitter/nvim-treesitter 
-- Parsers and highlighters. A tad confusing to set up, might be borked right now.

return {
	"nvim-treesitter/nvim-treesitter",
    branch = "master",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			-- language parsers that MUST be installed
			ensure_installed = {
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
                "sql",
                "vim",
                "vimdoc",
                "yaml"
           },
			auto_install = true, -- auto-install any other parsers on opening new language files
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<TAB>",
					node_decremental = "<S-TAB>",
				},
			},
		})
	end,
}

-- treesitter main branch
-- return {
--     "nvim-treesitter/nvim-treesitter",
--     branch = "main",
--     version = false,
--
--     config = function()
-- 	local configs = require("nvim-treesitter")
-- 	configs.install({
-- 	    "bash",
-- 	    "csv",
-- 	    "dockerfile",
-- 	    "gitignore",
-- 	    "json", 
-- 	    "lua", 
-- 	    "markdown", 
-- 	    "markdown_inline",
-- 	    "query",
-- 	    "rust",
-- 	    "sql", 
-- 	    "vim",
-- 	    "vimdoc",
-- 	    "yaml"
-- 	})
--     end
-- }
