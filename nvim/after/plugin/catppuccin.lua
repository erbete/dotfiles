local status, cat = pcall(require, "catppuccin")
if (not status) then return end

cat.setup()

vim.g.catppuccin_flavour = "mocha"
