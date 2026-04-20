return {
  {
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
    end
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require("nightfox").setup(opts)
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require('kanagawa').setup(opts)
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require('tokyonight').setup(opts)
    end
  },
  {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require('vague').setup(opts)
    end
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local opts = {}
        require('vague').setup(opts)
    end
  }
}
