require "nvchad.mappings"

local map = vim.keymap.set

-- open oil
map("n", "<tab><tab>", "<CMD>Oil<CR>", { desc = "Opens filetree" })

-- Move selected lines up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
