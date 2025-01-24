-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>ch", "<cmd>Telescope neoclip<cr>", { desc = "Clipboard History" })
-- 使用 <Leader>so 打开 Symbols Outline
vim.api.nvim_set_keymap("n", "<Leader>so", ":SymbolsOutline<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>byaf", "ggVGy", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bdaf", "ggVGd", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bmte", "G$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bmtb", "gg^", { noremap = true, silent = true })
