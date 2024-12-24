local status, github = pcall(require, "slugbyte/lackluster.nvim")
if (not status) then return end

github.setup({
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("lackluster-mint")
    end,
})
