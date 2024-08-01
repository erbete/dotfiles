local status, project = pcall(require, "project_nvim")
if (not status) then return end

project.setup({
    patterns = {".__nvim__.lua", ".git", ".sln", ".svn", "go.mod", "go.sum", "Makefile", "package.json", "Dockerfile", ".cargo", "composer.json" },
    -- exclude_dirs = { "node_modules", "public" },
})

