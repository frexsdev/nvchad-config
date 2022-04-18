local M = {}
local userPlugins = require "custom.plugins"

M.ui = {
   theme = "nord",
   transparency = true,
}

M.plugins = {
   install = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   status = {
      alpha = true,
   },
}

return M
