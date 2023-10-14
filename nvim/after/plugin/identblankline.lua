local status, blankline = pcall(require, "ibl")
if (not status) then return end

blankline.setup({
    indent = { char = "│"},
    scope = {
        show_start = false,
        show_end = false,
    }
})
