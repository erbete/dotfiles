local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  --local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  --buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  --buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  --buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  -- formatting
  -- if client.server_capabilities.documentFormattingProvider then
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     group = vim.api.nvim_create_augroup("Format", { clear = true }),
  --     buffer = bufnr,
  --     callback = function() vim.lsp.buf.formatting_seq_sync() end
  --   })
  -- end
end

-- Set up completion using nvim_cmp with LSP source
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(
--   vim.lsp.protocol.make_client_capabilities()
-- )

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--   underline = true,
--   update_in_insert = false,
--   virtual_text = { spacing = 4, prefix = "●" },
--   severity_sort = true,
-- }
-- )

-- Diagnostic symbols in the sign column (gutter)
-- local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
-- for type, icon in pairs(signs) do
--   local hl = "DiagnosticSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
-- end

-- vim.diagnostic.config({
--   virtual_text = {
--     prefix = '●'
--   },
--   update_in_insert = true,
--   float = {
--     source = "always", -- Or "if_many"
--   },
-- })

-- language servers
nvim_lsp.gopls.setup {
  on_attach = on_attach,
}

nvim_lsp.zls.setup {
  on_attach = on_attach,
}

nvim_lsp.sqlls.setup {
  on_attach = on_attach,
}

nvim_lsp.bashls.setup{
  on_attach = on_attach,
}

nvim_lsp.jsonls.setup{
  on_attach = on_attach,
}

nvim_lsp.dockerls.setup{
  on_attach = on_attach,
}

nvim_lsp.yamlls.setup{
  on_attach = on_attach,
  settings = {
    redhat = {
      telemetry = {
        enabled = false
      }
    }
  }
}

nvim_lsp.intelephense.setup{
  on_attach = on_attach,
}

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 2000)]]
