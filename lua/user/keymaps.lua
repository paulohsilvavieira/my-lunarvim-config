lvim.leader = "space"

lvim.builtin.dap.active = true
-- lvim.builtin.terminal.active = false
-- lvim.builtin.terminal.direction = "horizontal"
-- lvim.builtin.terminal.size = 10

-- lvim.keys.normal_mode["<leader>-t"] = ":ToggleTerm<CR>"
lvim.keys.normal_mode["C-b"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"


vim.api.nvim_set_keymap('n', '<C-S-j>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-S-k>', ':m .-2<CR>==', { noremap = true, silent = true })

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=10 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=80 direction=horizontal<cr>", "Split horizontal" },
}


vim.api.nvim_set_keymap('n', '<A-S-Up>', ':horizontal resize -1', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Down>', ':horizontal resize +1', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Left>', ':vertical resize +1', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Right>', ':vertical resize -1', { noremap = true, silent = true })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}
lvim.format_on_save = true


local default_opts = { noremap = true, silent = true }

local keymap = function(mode, from, to, opts)
  if not opts then opts = default_opts end
  vim.keymap.set(mode, from, to, opts)
end

local nkeymap = function(from, to, opts)
  keymap("n", from, to, opts)
end

local ikeymap = function(from, to, opts)
  keymap("i", from, to, opts)
end
lvim.lang.ruby.formatters = {
  {
    exe = "rufo",
    args = {},
  }
}
nkeymap("zs", ":lua require'telescope.builtin'.spell_suggest()<cr>")



require("lazy").setup({
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
})
