local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'ocamllsp', 'als', 'rls', 'sumneko_lua', 'pylsp'}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
