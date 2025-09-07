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
        require("kanagawa").setup(opts)
        vim.cmd.colorscheme "kanagawa-wave"
--        vim.cmd.colorscheme "kanagawa-dragon"
--        vim.cmd.colorscheme "kanagawa-lotus"
    end
}]]


--[[return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require("nordic").setup(opts)
        vim.cmd.colorscheme "nordic"
    end
}]]
