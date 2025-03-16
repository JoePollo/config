local wezterm = require 'wezterm'

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Appearance
config.color_scheme = 'Dracula'
config.font = wezterm.font_with_fallback({
  'JetBrains Mono',
  'Noto Color Emoji',
})
config.font_size = 14.0
config.window_background_opacity = 0.95
config.hide_tab_bar_if_only_one_tab = true

-- Terminal behavior
config.default_prog = { '/home/linuxbrew/.linuxbrew/bin/nu' }  -- Path to Nushell
config.scrollback_lines = 10000

-- Key bindings
config.keys = {
  -- New window/tab
  { key = 'n', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnWindow },
  { key = 't', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },

  -- Split panes
  { key = '|', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal },
  { key = '_', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical },

  -- Navigate between panes
  { key = 'h', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },
}

return config
