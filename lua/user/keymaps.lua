local api = require('nvim-tree.api')

lvim.leader = "space"

lvim.builtin.dap.active = true

-- lvim.keys.normal_mode["<C-b>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-S-j>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<C-S-j>"] = ":m .-2<CR>=="

lvim.keys.normal_mode["<A-S-Up>"] = ":horizontal resize -1"
lvim.keys.normal_mode["<A-S-Down>"] = ":horizontal resize +1"
lvim.keys.normal_mode["<A-S-Left>"] = ":vertical resize +1"
lvim.keys.normal_mode["<A-S-Right>"] = ":vertical resize -1"

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=10 direction=horizontal<cr>", "Split horizontal" },
}



lvim.keys.normal_mode["<C-v>"] = api.node.open.vertical

lvim.keys.normal_mode["<C-x>"] = api.node.open.horizontal



local telescope = require('telescope.builtin')

lvim.builtin.which_key.mappings["f"] = {
  name = "+FuzzyFinder",
  f = { "<cmd>Telescope live_grep<cr>", "Find on All Files" },
  b = { "<cmd>Telescope buffers<cr>", "Find Buffers" }
}


