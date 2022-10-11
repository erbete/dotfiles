local status, github = pcall(require, "projekt0n/github-nvim-theme")
if (not status) then return end

github.setup({})
