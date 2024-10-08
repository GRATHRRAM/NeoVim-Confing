return {
    { --Mason
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    { --Mason-lispconfig
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                }
            })
        end
    },
    { --Nvim-lspconfig
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            
            lspconfig.cmd = {"clangd", "--header-insertion=never"}
            
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
        end
    }
}
