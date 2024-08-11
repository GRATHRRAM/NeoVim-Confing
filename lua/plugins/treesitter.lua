return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
	    ensure_installed = {"lua" , "c" , "cpp"}
        highlight = { enable = true }
        indent = { enable = true }
    end
}
