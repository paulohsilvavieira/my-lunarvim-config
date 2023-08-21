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
  f = { "<cmd>ToggleTerm direction=horizontal<cr>", "Open terminal" },
}




lvim.keys.normal_mode["<C-v>"] = api.node.open.vertical

lvim.keys.normal_mode["<C-x>"] = api.node.open.horizontal


lvim.builtin.which_key.mappings["f"] = {
  name = "+Telescope",
  g = { "<cmd>Telescope live_grep<cr>", "Find on All Files" },
  f = { "<cmd>Telescope find_files<cr>", "Find File" }
}
