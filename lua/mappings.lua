require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal mode" })
map("n", "<Leader>qq", ":qa!<CR>", { desc = "Quit Neovim" })
map("n", "<Leader>cg", "<cmd> cd ~/AppData/Local/nvim <cr>", { desc = "Open Neovim config folder" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Move window
map("n", "wh", "<C-w>h")
map("n", "wk", "<C-w>k")
map("n", "wj", "<C-w>j")
map("n", "wl", "<C-w>l")

-- Diagnostics
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
