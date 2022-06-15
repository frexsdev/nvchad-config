local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
   b.formatting.prettierd,
   b.formatting.stylua,
   b.formatting.zigfmt,
   b.formatting.black,
   b.formatting.clang_format,
   b.formatting.cljstyle,
   b.formatting.rustfmt,
   b.formatting.brittany,
   b.formatting.elm_format,
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
