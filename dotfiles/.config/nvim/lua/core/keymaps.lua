 -- On définit notre touche leader sur espace
vim.g.mapleader = " "

-- Raccourci pour la fonction set
local keymap = vim.keymap.set

-- Déplacement entre les fenêtres avec Alt + Flèches directionnelles
vim.api.nvim_set_keymap("n", "<M-Left>", "<C-w>h", { noremap = true, silent = true, desc = "Fenêtre gauche" })
vim.api.nvim_set_keymap("n", "<M-Down>", "<C-w>j", { noremap = true, silent = true, desc = "Fenêtre bas" })
vim.api.nvim_set_keymap("n", "<M-Up>", "<C-w>k", { noremap = true, silent = true, desc = "Fenêtre haut" })
vim.api.nvim_set_keymap("n", "<M-Right>", "<C-w>l", { noremap = true, silent = true, desc = "Fenêtre droite" })

