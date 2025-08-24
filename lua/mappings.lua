require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>qq", ":qa!<CR>", { desc = "Quit Neovim" })
map("n", "<Leader>cg", "<cmd> cd ~/AppData/Local/nvim <cr>", { desc = "Open Neovim config folder" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
