local M = {}

M.ui = {
   theme = "chadracula",
   transparency = true,
}

M.options = {
   user = function()
      require "custom.options"
   end,
}

M.plugins = {
   user = require "custom.plugins",
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

M.mappings = require "custom.mappings"

return M
