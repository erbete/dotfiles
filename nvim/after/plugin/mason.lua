local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
    ensure_installed = {
        "gopls",
        "zls",
        "sqlls",
        "bashls",
        "dockerls",
        "yamlls",
        "jsonls",
        "tailwindcss",
        "cssls",
        "html",
        "lua_ls",
    },
    automatic_installation = true
})
