-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map(
  "n",
  "<leader>ad",
  "<cmd>lua require('cmp').setup.buffer { enabled = false }<cr>",
  { desc = "Disable autocomplete for the buffer" }
)

map(
  "n",
  "<leader>ae",
  "<cmd>lua require('cmp').setup.buffer { enabled = true }<cr>",
  { desc = "Enable autocomplete for the buffer" }
)
