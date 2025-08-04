local status, cmp = pcall(require, "cmp")
if (not status) then return end

cmp.setup({
    completion = {
        completeopt = "menu,menuone,noinsert"
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" },
    }, {
        { name = "buffer" },
    }),
    formatting = {
        format = require("lspkind").cmp_format({
            mode = "symbol_text",
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })
        }),
    }
})

--cmp.setup.cmdline('/', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--        { name = 'buffer' }
--    }
--})

--cmp.setup.cmdline(':', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = cmp.config.sources({
--        { name = 'path' }
--        }, {
--            { name = 'cmdline' }
--        })
--})
