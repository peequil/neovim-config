local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end
local lsp_flags = {
  debounce_text_changes = 150,
}
-- lsp_installer.on_server_ready(function(server)
--     local opts = {
--         on_attach = require("user.lsp.handlers").on_attach,
--       	capabilities = require("user.lsp.handlers").capabilities,
--     }

--     if server.name == "pyright" then
-- 	local pyright_opts = require("user.lsp.settings.pyright")
-- 	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
--     end

--     if server.name == "sumneko_lua" then
--  	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
--  	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
--     end

--     if server.name == "arduino_language_server" then
--     	local arduino_language_server_opts = require("user.lsp.settings.arduino_language_server")
-- 	opts = vim.tbl_deep_extend("force", arduino_language_server_opts, opts)
--     end

--     server:setup(opts)
-- end)
vim.lsp.set_log_level("debug")

require("nvim-lsp-installer").setup{}
local lspconfig = require("lspconfig")
local on_attach = require("user.lsp.handlers").on_attach
local capabilities = require("user.lsp.handlers").capabilities

-- local lsp_flags = {
--   debounce_text_changes = 150,
-- }
-- lspconfig.pyright.setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
--   analysis = {
--     typeCheckingMode = "off",
--   },
--   venvPath = '/usr/bin/pydoc3.9',
-- }

lspconfig.pyright.setup{
  on_attach = on_attach,
  flags = lsp_flags,
  python = {
    analysis = {
      typeCheckingMode = "off",
    },
  },
}
-- lspconfig['clangd'].setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }
lspconfig['vimls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
-- lspconfig['sumneko_lua'].setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
--   diagnostics = {
--     globals = {"vim"},
--   },
--   workspace = {
--     library = {
--       [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--       [vim.fn.stdpath("config") .. "/lua"] = true,
--     },
--   },
-- }

local servers = { 'clangd', 'pyright', 'vimls'}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end
require("nvim-lsp-installer").setup({
    automatic_installation = false,
    ui = {
    icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
