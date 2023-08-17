local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}
lvim.format_on_save = true