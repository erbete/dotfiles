local status, penvim = pcall(require, "penvim")
if (not status) then return end

penvim.setup({
    project_env = {
        enable = true,
        config_name = ".__nvim__.lua"
    },
    rooter = {
        enable = true,
        patterns = {".__nvim__.lua", ".git", ".sln", ".svn", "go.mod", "go.sum", "Makefile", "package.json", ".gitignore", "Dockerfile", ".cargo" }
    },
})

