vim.opt.relativenumber = true
vim.cmd [[
    autocmd BufRead,BufNewFile *.bang set filetype=bang
    autocmd BufRead,BufNewFile *.noq set filetype=noq
]]
vim.g.VM_mouse_mappings = 1

vim.cmd [[
  let g:VM_maps = {}
  let g:VM_maps["Find Under"] = "<C-d>"
  let g:VM_maps["Find Subword Under"] = "<C-d>"
]]
