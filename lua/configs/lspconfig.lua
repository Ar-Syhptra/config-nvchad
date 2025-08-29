-- Import default configurations
require("nvchad.configs.lspconfig").defaults()

-- Define LSP servers and their configurations
local servers = {
  html = {
    filetypes = { "html", "blade" },
  },
  cssls = {},
  ts_ls = {
    filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  },
  lua_ls = {},
  intelephense = {
    filetypes = { "php", "blade" },
  },
  tailwindcss = {
    filetypes = { "html", "css", "javascript", "typescript", "blade", "php" },
  },
  emmet_language_server = {
    filetypes = {
      "astro",
      "css",
      "eruby",
      "html",
      "htmlangular",
      "htmldjango",
      "javascriptreact",
      "less",
      "pug",
      "sass",
      "scss",
      "svelte",
      "templ",
      "typescriptreact",
      "vue",
      "blade",
      "php",
    },
  },
}

-- Get shared configurations
local lspconfig = require "lspconfig"
local nvchad_config = require "nvchad.configs.lspconfig"
local on_attach = nvchad_config.on_attach
local capabilities = nvchad_config.capabilities

-- Enable LSP servers
vim.lsp.enable(vim.tbl_keys(servers))

-- Setup each server with its configuration
for server_name, config in pairs(servers) do
  lspconfig[server_name].setup(vim.tbl_extend("force", {
    on_attach = on_attach,
    capabilities = capabilities,
  }, config))
end
