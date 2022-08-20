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
		"vue",
		"regex",
		"json",
		"graphql",
		"go",
		"toml",
		"yaml",
		"dockerfile",
		"bash",
		"comment",
		"jsdoc",
		"lua",
		"vim",
        "zig",
 	},
    -- autotag = {
    --     enable = true,
    -- },
}
