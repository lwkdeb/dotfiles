-- https://wiki.hypr.land/Configuring/

require("land.binds")
require("land.windows")
require("land.looks")

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@144",
    position = "auto",
    scale = 1.20,
})

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    -- hl.exec_cmd("nm-applet")
    -- hl.exec_cmd("blueman-applet")
    -- hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    -- hl.exec_cmd("qs -c noctalia-shell")
    hl.exec_cmd("noctalia")
    -- hl.exec_cmd("systemctl --user start hyprpolkitagent")
    -- hl.exec_cmd("waypaper --restore")
    -- hl.exec_cmd("waybar")
    -- hl.exec_cmd("swaync")
    -- hl.exec_cmd("hypridle")
    -- hl.exec_cmd("~/.config/hypr/scripts/gamebinds.sh")
    -- hl.exec_cmd("~/.config/hypr/scripts/batterynoti.sh")
    -- hl.exec_cmd("wl-paste --watch cliphist store")
    -- hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
hl.env("XCURSOR_SIZE", "16")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "16")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
--hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
-- hl.env("WLR_NO_HARDWARE_CURSORS", "1")
-- hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "0")
-- hl.env("QT_SCALE_FACTOR",             "1.2")
-- hl.env("MOZ_ENABLE_WAYLAND", "1")
-- hl.env("GDK_SCALE",     "1")
-- hl.env("GDK_DPI_SCALE", "1")

-- See https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    input = {
        kb_layout = "us",
        -- kb_variant = "",
        -- kb_model   = "",
        -- kb_options = "caps:swapescape",
        -- kb_rules   = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
        },
    },

    misc = {
        disable_hyprland_logo = true,
        middle_click_paste = false,
        animate_manual_resizes = true,
        animate_mouse_windowdragging = true,
        vrr = true,
        mouse_move_enables_dpms = false,
        key_press_enables_dpms = true,
    },

    cursor = {
        inactive_timeout = 15,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
