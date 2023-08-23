
lvim.leader = "space"

lvim.builtin.dap.active = true

-- lvim.keys.normal_mode["<C-b>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-S-k>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<C-S-j>"] = ":m .-2<CR>=="



lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm direction=horizontal<cr>", "Open terminal" },
}





function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end


lvim.builtin.which_key.mappings["f"] = {
  name = "+Telescope",
  g = { "<cmd>Telescope live_grep<cr>", "Find on All Files" },
  f = { "<cmd>Telescope find_files<cr>", "Find File" }
}

lvim.keys.normal_mode["<C-w>"] = ":BufferKill<CR>"

Map("n", "<A-Up>", "<cmd>resize -2<CR>")
Map("n", "<A-Down>", "<cmd>resize +2<CR>")
Map("n", "<A-Left>", "<cmd>vertical resize -2<CR>")
Map("n", "<A-Right>", "<cmd>vertical resize +2<CR>")

