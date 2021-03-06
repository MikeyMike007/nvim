local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    -- Formatters
    formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
    formatting.black,
    -- formatting.yapf,
    formatting.stylua,
    -- formatting.clang_format,
    formatting.markdownlint,
    -- Linters
    diagnostics.flake8,
    diagnostics.eslint_d,
    diagnostics.markdownlint,
    diagnostics.stylelint,
  },
}
