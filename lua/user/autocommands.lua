vim.cmd [[
  augroup _lsp
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting()
  augroup end
  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end
]]
