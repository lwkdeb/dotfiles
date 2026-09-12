--  _  __          _     _           _
-- | |/ /___ _   _| |__ (_)_ __   __| |___
-- | ' // _ \ | | | '_ \| | '_ \ / _` / __|
-- | . \  __/ |_| | |_) | | | | | (_| \__ \
-- |_|\_\___|\__, |_.__/|_|_| |_|\__,_|___/
--           |___/
--
local ipc = "noctalia msg"
local mod = "SUPER"
local terminal = "kitty"
local fileManager = "pcmanfm"

hl.bind(mod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + C", hl.dsp.window.close())
hl.bind(mod .. " + F", hl.dsp.window.fullscreen())
hl.bind(
	mod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit")
)
hl.bind(mod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + Z", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mod .. " + T", hl.dsp.exec_cmd("vscodium"))
-- hl.bind(mod .. " + A", hl.dsp.exec_cmd("pkill wofi || wofi --show drun"))
hl.bind(mod .. " + A", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))

-- Screenshot with hyprshot
--hl.bind(mod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind(mod .. " + D", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind("Print", hl.dsp.exec_cmd('hyprshot -m region -o "$HOME/Pictures/screenshots"'))
 --hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region -o \"$HOME/Pictures/screenshots\""))

-- Screenshot with noctalia ipc
--hl.bind("PRINT", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))  -- full screen
--hl.bind(mod .. " + D", hl.dsp.exec_cmd("noctalia msg screenshot-region"))  --region
-- hl.bind("Print", hl.dsp.exec_cmd('hyprshot -m region -o "$HOME/Pictures/screenshots"'))

-- Move focus with Mod + arrow keys
hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with Mod + [1-9, 0]
-- Move active window to workspace with Mod + SHIFT + [1-9, 0]
for i = 1, 10 do
	local key = i % 10 -- key 0 maps to workspace 10
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
-- hl.bind(mod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through workspaces with mouse side buttons
hl.bind("mouse:276", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("mouse:275", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("mouse:274", hl.dsp.exec_cmd("~/.config/hypr/scripts/switchtoemptyws.sh"))

-- Move/resize windows with Mod + LMB/RMB and dragging
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

-- Brightness (requires brightnessctl)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%-"), { locked = true, repeating = true })

-- Media (requires playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
