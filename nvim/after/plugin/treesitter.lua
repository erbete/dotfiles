local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = false,
        disable = {}
    },
    ensure_installed = {
        "typescript",
        "javascript",
        "html",
        "css",
        "scss",
        "json",
        "vue",
        "jsdoc",
        "regex",
        "go",
        "toml",
        "yaml",
        "dockerfile",
        "bash",
        "comment",
        "lua",
        "vim",
        "zig",
        "php",
    },
    -- autotag = {
    --     enable = true,
    -- },
}
