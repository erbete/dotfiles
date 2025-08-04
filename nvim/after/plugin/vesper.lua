local status, vesper = pcall(require, "datsfilipe/vesper.nvim")
if (not status) then return end

vesper.setup({
    transparent = false,
    italics = {

        comments = false,
        keywords = false,
        functions = false,
        strings = false,
        variables = false,
    }
})
