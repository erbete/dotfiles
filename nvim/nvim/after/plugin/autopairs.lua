local status, pairs = pcall(require, "nvim-autopairs")
if (not status) then return end

pairs.setup({
	check_ts = true,
	disable_filetype = { "TelescopePromt", "vim" },
})
