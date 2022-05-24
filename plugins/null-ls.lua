local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   b.formatting.prettierd,

   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,

   -- Zig
   b.formatting.zigfmt,

   -- Rust
   b.formatting.rustfmt,

   -- Nim
   b.formatting.nimpretty,

   -- Python
   b.formatting.black,

   -- C, C++
   b.formatting.clang_format,

   -- Assembly
   b.formatting.asmfmt,
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
