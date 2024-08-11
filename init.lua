vim.cmd("set nocompatible")            
vim.cmd("set showmatch")               
vim.cmd("set ignorecase")             
vim.cmd("set tabstop=2")
vim.cmd("set number")

require("config.lazy")

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-p>',builtin.find_files, {})
vim.keymap.set('n','<C-o>',builtin.live_grep, {})
