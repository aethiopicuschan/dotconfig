local wezterm = require 'wezterm'

wezterm.font("FiraCode NF", { weight = "Regular", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode NF", { weight = "DemiBold", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = "Light", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = 450, stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = "Medium", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = "DemiBold", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font", { weight = "Bold", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = "Light", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = 450, stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = "Medium", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = "DemiBold", stretch = "Normal", style = "Normal" })
wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" })

return {
    window_close_confirmation = "NeverPrompt",
    colors = {
        scrollbar_thumb = '#008dd8',
        cursor_fg = 'white',
        compose_cursor = '#008dd8',
        selection_fg = 'white',
        selection_bg = '#008dd8'
    },
    color_scheme = "Freya (Gogh)",
    default_cursor_style = 'SteadyBar',
    font = wezterm.font_with_fallback {
        'FiraCode Nerd Font',
        'Hiragino Sans',
    },
    window_decorations = "RESIZE",
    tab_max_width = 100,
    scrollback_lines = 10000,
    enable_scroll_bar = true,
    window_frame = {
        inactive_titlebar_bg = '#353535',
        active_titlebar_bg = '#353535',
    },
    hyperlink_rules = {
        {
            regex = '\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b',
            format = '$0',
        },
        {
            regex = '\\b\\w+://[\\w.-]+\\w+:[0-9].\\S*\\b',
            format = '$0'
        },
        {
            regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
            format = '$0',
        },
    },
    keys = {
        {
            key = 'w',
            mods = 'CTRL',
            action = wezterm.action_callback(function(win, pane)
                win:maximize()
            end),
        },
    },
}
