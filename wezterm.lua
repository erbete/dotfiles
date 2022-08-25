local wezterm = require 'wezterm';
-- local launch_menu = {}

return {
    color_scheme = "Fahrenheit",
    -- font = wezterm.font("CaskaydiaCove NF", {weight="Regular"}),
    -- font = wezterm.font("Operator Mono Medium", {weight="Medium"}),
    font = wezterm.font("JetBrains Mono", { weight = "Medium", stretch = "Expanded" }),
    font_size = 11,
    initial_cols = 120,
    initial_rows = 28,
    window_padding = {
        left = 10,
        right = 10,
        top = 10,
        bottom = 10,
    },
    -- hide_tab_bar_if_only_one_tab = true,
    default_cursor_style = "SteadyBlock",
    -- cursor_blink_rate = 800,
    keys = {
        { key = "v", mods = "SHIFT|CTRL", action = "Paste" },
    }
}
