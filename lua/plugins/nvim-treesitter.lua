return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "php",
        "blade",
      },
      -- Mengaktifkan penyorotan sintaks
      highlight = {
        enable = true,
        -- Anda bisa menambahkan daftar bahasa yang ingin diabaikan
        -- disable = { "c", "rust" },
      },
      -- Mengaktifkan indentasi otomatis
      indent = {
        enable = true,
      },
      -- Mengaktifkan fitur text objects
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Mengaktifkan 'lookahead' untuk seleksi yang lebih cerdas
          keymaps = {
            -- Contoh keymap
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    },
  },
}
