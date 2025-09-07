vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Show line numbers
vim.cmd("set number")

require("config.lazy")

local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

n_keymap('<C-p>', ':FzfLua files<CR>')
n_keymap('<C-g>', ':FzfLua grep<CR>')
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
