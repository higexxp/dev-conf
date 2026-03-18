local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- フォント設定
config.font = wezterm.font("MesloLGS NF")
config.font_size = 14.0

-- 起動時にtmuxを自動起動
config.default_prog = { "/bin/zsh", "-l", "-c", "tmux new-session -A -s main" }

-- キーバインド設定
config.keys = {
  {
    key = "Enter",
    mods = "CMD",
    action = wezterm.action.ToggleFullScreen,
  },
}

return config
