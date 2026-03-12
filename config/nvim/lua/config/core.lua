-- core config

-- View Line Number
vim.opt.relativenumber = true
vim.opt.number = true

-- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
