vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<C-BS>", "<C-w>", { desc = "Remove backwords till space" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>v", "<C-q>", { desc = "Enter block selection mode" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
keymap.set("v", "<leader>*", "g<C-a>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split windows
keymap.set("n", "Ü", "5<C-w>+", { desc = "Increase split heigh" })
keymap.set("n", "ü", "5<C-w>-", { desc = "Decrease split heigh" })
keymap.set("n", "*", "5<C-w>>", { desc = "Decrease split heigh" })
keymap.set("n", "+", "5<C-w><", { desc = "Decrease split heigh" })

-- scrolling
keymap.set("n", "ö", "<C-d>zz", { desc = "Scroll half page down and center" })
keymap.set("n", "ä", "<C-u>zz", { desc = "Scroll half page up and center" })
keymap.set("n", "Ä", "{zz", { desc = "Scroll to previous paragraph and center" })
keymap.set("n", "Ö", "}zz", { desc = "Scroll to next paragraph and center" })

-- copy/paste from clipboard
keymap.set("v", "<C-c>", '"*y', { desc = "Copy selection so clipboard" })
keymap.set("n", "<C-v>", '"*p', { desc = "Paste from clipboard" })
keymap.set("i", "<C-v>", '<ESC>"*p', { desc = "Paste from clipboard" })
