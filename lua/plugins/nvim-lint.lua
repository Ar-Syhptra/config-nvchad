return {
  -- test new blink
  { import = "nvchad.blink.lazyspec" },
  {
    "mfussenegger/nvim-lint",
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    config = function()
      local lint = require "lint"

      -- Konfigurasi linter per filetype
      lint.linters_by_ft = {
        html = { "htmlhint" },
        css = { "stylelint" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        json = { "jsonlint" },
        php = { "phpcs" },
      }

      -- Grup autocmd
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })

      -- Keymap untuk memicu linting manual
      vim.keymap.set("n", "<leader>ll", function()
        lint.try_lint()
      end, { desc = "Trigger linting for current file" })
    end,
  },
}
