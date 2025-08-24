local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    yaml = { "prettierd", "prettier" },
    markdown = { "prettierd", "prettier" },
    php = { "php-cs-fixer", "duster" },
    blade = { "duster" },
  },

  -- Enable format on save. Uncomment this block to activate.
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500, -- Maximum time to wait for formatting to complete
    lsp_fallback = true, -- Fallback to LSP formatting if no conform formatter is available for the filetype
  },
}

return options
