local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_action = require "telescope".extensions.file_browser.actions

telescope.setup{
  defaults = {
	file_sorter = require("telescope.sorters").get_fzy_sorter,
	color_devicons = true,
	file_previewer = require("telescope.previewers").vim_buffer_cat.new,
	grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
	qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
	file_ignore_patterns = { "node_modules", "bin", "obj", ".nuget", "%.zip", "%.pdf", "%.mkv" }
  },
  extensions = {
    	fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
    	},
        file_browser = {
            theme = "ivy"
        },
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- opts
            }
        }
	}
}

telescope.load_extension("fzy_native")
telescope.load_extension("file_browser")
telescope.load_extension("ui-select")
telescope.load_extension('projects')

