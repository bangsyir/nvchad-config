require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "lua", "prismals", "ts_ls", "unocss", "gopls", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
