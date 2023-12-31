-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
reload("user.keymaps")
reload("user.plugins")
reload("user.dap-ts-js")
reload("user.colorscheme")
reload("user.formatters")
reload("user.linters")
reload("user.vim")

vim.opt.timeoutlen = 500
vim.cmd [[ set guicursor= ]]
vim.cmd [[ set number ]]

lvim.builtin.treesitter.ensure_installed = {}
