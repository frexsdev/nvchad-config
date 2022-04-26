local M = {}
local userPlugins = require "custom.plugins"

M.ui = {
   theme = "chadracula",
   transparency = true,
}

M.plugins = {
   install = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
      luasnip = {
         snippet_path = { "~/.config/nvim/lua/custom/snippets" },
      },
   },
   status = {
      alpha = true,
      colorizer = true,
   },
}

return M
