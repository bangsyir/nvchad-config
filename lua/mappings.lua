require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map(
  "n",
  "<CR>",
  "<cmd>lua require('kulala').run()<cr>",
  { noremap = true, silent = true, desc = "Execute the request" }
)
-- normal mode
map("n", "<A-j>", "mz:m .+1<CR>==`z", { desc = "Move line down" })
map("n", "<A-k>", "mz:m .-2<CR>==`z", { desc = "Move line up" })
-- visual mode
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" }) -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" }) -- move line down(v)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
