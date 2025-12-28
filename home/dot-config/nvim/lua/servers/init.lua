local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language Server Protocols (LSP)
require("servers.lua_ls")(capabilities)
require("servers.sqls")(capabilities)

-- Linters & Formatters
require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
    "lua_ls",
    "sqls"
})
