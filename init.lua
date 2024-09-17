vim.cmd("set expandtab")
vim.cmd("set nocompatible")
vim.cmd("set showmatch")
vim.cmd("set ignorecase")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

vim.cmd("tnoremap <Esc> <C-\\><C-n> ")
vim.cmd("nnoremap <C-a> :vs term://bash<CR>")

vim.g.mapleader = " "

require("config.lazy")
