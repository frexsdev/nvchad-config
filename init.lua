-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")
map("n", "<leader>bn", ":bn <CR>")
map("n", "<leader>bp", ":bp <CR>")
map("n", "<leader>bd", ":bd <CR>")
map("n", "<C-Left>", ":vertical resize -2 <CR>")
map("n", "<C-Right>", ":vertical resize +2 <CR>")
map("n", "<esc>", ":noh <CR>")

-- CONFIG
vim.g.did_load_filetypes = 1
vim.opt.relativenumber = true

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
