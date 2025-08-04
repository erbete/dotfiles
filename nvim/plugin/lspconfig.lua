local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require("vim.lsp.protocol")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
end

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

nvim_lsp.bashls.setup {
    on_attach = on_attach,
}

nvim_lsp.dockerls.setup {
    on_attach = on_attach,
}

nvim_lsp.yamlls.setup {
    on_attach = on_attach,
    settings = {
        redhat = {
            telemetry = {
                enabled = false
            }
        }
    }
}

nvim_lsp.jsonls.setup {
    on_attach = on_attach,
}

nvim_lsp.tailwindcss.setup {
    on_attach = on_attach,
    filetypes = {
        "html",
        "css",
        "less",
        "postcss",
        "scss",
        "stylus",
        "markdown",
    },
}

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
        "css",
        "scss",
        "less",
    }
}

nvim_lsp.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

nvim_lsp.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
