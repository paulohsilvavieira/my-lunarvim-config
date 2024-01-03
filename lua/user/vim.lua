local lsp = {
  function()
    local buf_clients = vim.lsp.get_active_clients { bufnr = 0 }
    if #buf_clients == 0 then
      return "LSP Inactive"
    end

    local buf_ft = vim.bo.filetype
    local buf_client_names = {}
    local copilot_active = false

    -- add client
    for _, client in pairs(buf_clients) do
      if client.name ~= "null-ls" and client.name ~= "copilot" then
        table.insert(buf_client_names, client.name)
      end
    end

    -- add formatter
    local formatters = require "lvim.lsp.null-ls.formatters"
    local supported_formatters = formatters.list_registered(buf_ft)
    vim.list_extend(buf_client_names, supported_formatters)

    -- add linter
    local linters = require "lvim.lsp.null-ls.linters"
    local supported_linters = linters.list_registered(buf_ft)
    vim.list_extend(buf_client_names, supported_linters)

    local unique_client_names = table.concat(buf_client_names, ", ")
    local language_servers = string.format("LSP - %s", unique_client_names)

    if copilot_active then
      language_servers = language_servers .. "%#SLCopilot#" .. " " .. lvim.icons.git.Octoface .. "%*"
    end

    return language_servers
  end,

}

lvim.builtin.lir.active = false

lvim.builtin.lualine.sections.lualine_a = { "mode" }




lvim.builtin.lualine.options.component_separators = ''
lvim.builtin.lualine.options.section_separators = { left = '', right = '󱎕' }

lvim.builtin.lualine.sections = {
  lualine_a = {
    { 'mode', icons_enabled = true, icon = '', right_padding = 1, separator = { right = '' } },

  },
  lualine_b = {
    { 'branch', icons_enabled, icon = '' },
    {
      'diagnostics',
      sources = { "nvim_diagnostic" },
      always_visible = true,
      sections = { 'error', 'warn' },
      symbols = { error = '󰅙 ', warn = ' ', }

    },
    {
      'filename'
    }
  },
  lualine_x = {
    lsp
  },
  lualine_y = { 'filetype', 'progress',
    { 'location', separator = { left = '' }, left_padding = 2 },
  },
  lualine_z = {
    { 'datetime', style = "%d/%m - %H:%M", icons_enabled = true, icon = '󰥔' }
  },
}

-- lvim.builtin.lualine.tabline = {
--   lualine_a = {

--     'buffers'

--   }
-- }
