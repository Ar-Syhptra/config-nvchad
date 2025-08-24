require("nvchad.configs.lspconfig").defaults()

local lang = { "html", "cssls", "ts_ls", "lua_ls", "intelephense", "tailwindcss", "emmet_language_server" }

vim.lsp.enable(lang)

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local servers = {
  html = {
    filetypes = { "html", "blade" },
  },

  cssls = {},

  ts_ls = { "javascript", "typescript", "javascriptreact", "typescriptreact" },

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

-- Loop untuk menerapkan konfigurasi ke setiap server secara otomatis
for server, config in pairs(servers) do
  -- Panggil lspconfig.setup untuk setiap server
  require("lspconfig")[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = config.settings,
    filetypes = config.filetypes,
  }
end

-- read :h vim.lsp.config for changing options of lsp servers
