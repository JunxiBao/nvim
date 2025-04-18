-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("i", "jj", "<Esc>")
-- 使用 <Leader>so 打开 Symbols Outline
vim.api.nvim_set_keymap("n", "<Leader>so", ":SymbolsOutline<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>mwc", ":echo wordcount().words<CR>", { desc = "Count words" })
vim.keymap.set("n", "<Leader>mcc", ":echo wordcount().chars<CR>", { desc = "Count chars" })
vim.keymap.set("n", "<Leader>mfm", ":lua vim.lsp.buf.format()<CR>", { desc = "format" })
