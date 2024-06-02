local wezterm = require("wezterm")
return {
	enable_tab_bar = false,
	-- window_padding = { bottom = 0 },
	window_padding = { right = 0, bottom = 0, left = 0 },

	-- color_scheme = "Catppuccin Mocha",
	-- color_scheme = "Apple Classic",
	-- color_scheme = "Ashes (base16)", -- blue
	color_scheme = "Ashes (dark) (terminal.sexy)",
	-- color_scheme = "Atelier Plateau (base16)", -- soft red
	-- color_scheme = "Aurora",

	-- color_scheme = "AlienBlood",
	-- color_scheme = "Afterglow",

	macos_window_background_blur = 8,
	window_background_opacity = 0.9,

	font_size = 14.0,
	font = wezterm.font("JetBrains Mono"),
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	keys = {
		{ key = "k", mods = "CMD", action = wezterm.action.ActivateTabRelative(-1) },
		{ key = "j", mods = "CMD", action = wezterm.action.ActivateTabRelative(1) },
		{
			key = "f",
			mods = "CMD",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
