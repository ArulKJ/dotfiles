--[[return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {
            color_overrides = {
--                mocha = {
--                  base = "#000000",
--                  mantle = "#000000",
--                  crust = "#000000",
--                },
            },
        }
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme "catppuccin-mocha"
--        vim.cmd.colorscheme "catppuccin-latte"
--        vim.cmd.colorscheme "catppuccin-macchiato"
    end
}]]

return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require("nightfox").setup(opts)
--        vim.cmd.colorscheme "dawnfox"
--        vim.cmd.colorscheme "dayfox"
        vim.cmd.colorscheme "duskfox"
    end
}


--[[return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require('kanagawa').setup(opts)
--        vim.cmd.colorscheme "kanagawa-lotus"
--        vim.cmd.colorscheme "kanagawa-dragon"
        vim.cmd.colorscheme "kanagawa-wave"
    end
}]]
