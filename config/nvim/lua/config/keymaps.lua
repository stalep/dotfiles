-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<S-left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-l>", "<cmd>L<cr>", { desc = "Move cursor to the bottom of the screen" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Workspace utils
map("n", "<leader>cw", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", { desc = "Workspace [A]dd", remap = true })
