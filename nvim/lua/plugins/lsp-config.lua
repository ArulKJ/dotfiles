return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls"; "pylsp"; "clangd"; },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = vim.lsp.config
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            lspconfig('lua_ls', {
                capabilities = capabilities,
                settings = {
                  Lua = {
                    diagnostics = {
                      globals = { "vim" }
                    }
                  }
                }
              }
            )
            lspconfig('pylsp', {
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                maxLineLength = 200,
                            }
                        }
                    }
                }
            })
            lspconfig('clangd', {
                capabilities = capabilities
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
        end
    }
}
