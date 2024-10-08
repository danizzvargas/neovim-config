local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces tabs count for
opt.softtabstop = 2
opt.shiftwidth = 2 -- Size of an indent

opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.clipboard = "unnamedplus"
opt.undofile = true

opt.linebreak = true -- Wrap lines at convenient points
opt.wrap = false -- Disable line wrap

vim.g.mapleader = " "
vim.g.maplocalleader = ","
