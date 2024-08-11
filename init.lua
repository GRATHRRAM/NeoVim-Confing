vim.cmd("set expandtab")
vim.cmd("set nocompatible")            
vim.cmd("set showmatch")               
vim.cmd("set ignorecase")             
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

require("config.lazy")

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-p>',builtin.find_files, {})
vim.keymap.set('n','<C-o>',builtin.live_grep, {})

local Tconfig = require("nvim-treesitter.configs")
Tconfig.setup({
	ensure_installed = {"lua" , "c" , "cpp"},
    highlight = { enable = true },
    indent = { enable = true },
})
