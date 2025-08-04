local status, lackluster = pcall(require, "slugbyte/lackluster.nvim")
if (not status) then return end

lackluster.setup({
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("lackluster-mint")
    end,
})
