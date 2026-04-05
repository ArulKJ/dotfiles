return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_install = {"lua", "python", "cpp"},
            highlight = { enable = true }
        })
    end
}
