-- https://github.com/nanotee/sqls.nvim
-- LSP for sql

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil
return function(capabilities)
	vim.lsp.config("sqls", {
		capabilities = capabilities,
        filetypes = { "sql" },
	})
end

