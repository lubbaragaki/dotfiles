require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "checkmake",
  "intelephense",
  "pylsp",
  "yamlls",
  "nixd",
  "qmlls",
  "remark_ls",
  "dockerls",
  "rubocop",
  "ts_ls",
  "vimls",
}

local lspconfig = require("lspconfig")

for _, server in ipairs(servers) do
  vim.lsp.config(server, {})
  vim.lsp.enable(server)
end
