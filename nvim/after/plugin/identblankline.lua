local status, blankline = pcall(require, "indent_blankline")
if (not status) then return end

blankline.setup {
	use_treesitter = true,
	show_trailing_blankline_indent = false,
	show_current_context = true,
	context_patterns = {
		"class", 
		"function", 
		"method", 
		"constructor", 
		"if", 
		"namespace", 
		"foreach", 
		"for", 
		"func", 
		"pub", 
		"fn", 
		"inline", 
		"test", 
		"try", 
		"switch",
		"type",
	}
}
