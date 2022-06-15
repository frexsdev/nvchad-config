return {
   ["goolord/alpha-nvim"] = {
      disable = false,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },

   ["NvChad/nvterm"] = {
      config = function()
         require "plugins.configs.nvterm"
      end,
   },

   ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
                  find_cmd = "rg",
               },
            },
         }
         require("telescope").load_extension "media_files"
      end,
   },

   ["mg979/vim-visual-multi"] = {},

   ["purescript-contrib/purescript-vim"] = {},

   ["rhysd/vim-wasm"] = {},

   ["vmchale/dhall-vim"] = {},
}
