vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")

vim.opt.list = true
vim.opt.listchars = {
--  eol = '⤶',
  space = '.',
  trail = '✚',
  extends = '◀',
  precedes = '▶',
}
vim.opt.colorcolumn = "120"
vim.opt.splitright = true


-- Better folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.treesitter.foldexpr()"

vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99 -- open all fold when opening bufr

-- Init lazy
require("config.lazy")

-- Set theme only after initializing lazy
vim.cmd.colorscheme "tokyonight-night"

local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

n_keymap('<C-p>', ':FzfLua files<CR>')
n_keymap('<C-f>', ':FzfLua grep<CR>')
n_keymap('<C-g>', ':FzfLua git_diff<CR>')
n_keymap('<C-BSlash>', ':FzfLua buffers<CR>')
n_keymap('<BSlash><BSlash>', ':NvimTreeToggle<CR>')


-- Diagnostics
-- https://smarttech101.com/nvim-lsp-diagnostics-keybindings-signs-virtual-texts

-- Show error message inline
vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = '✹' -- Could be '●', '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always",  -- Or "if_many"
  },
})

-- Setup mappings
n_keymap('<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>')
n_keymap('<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
n_keymap('<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
n_keymap('<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>')
