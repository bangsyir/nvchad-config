require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- normal mode
map("n", "<A-Down>", "mz:m .+1<CR>==`z", { desc = "Move line down" })
map("n", "<A-Up>", "mz:m .-2<CR>==`z", { desc = "Move line up" })
map("n", "<A-Left>", "<<", { desc = "Dedent line" }) -- Move line left (dedent)
map("n", "<A-Right>", ">>", { desc = "Indent line" }) -- Move line right (indent)
-- visual mode
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" }) -- move line up(v)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" }) -- move line down(v)
map("v", "<A-Left>", "<gv", { desc = "Dedent selection" }) -- Move selection left (dedent)
map("v", "<A-Right>", ">gv", { desc = "Indent selection" }) -- Move selection right (indent)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
