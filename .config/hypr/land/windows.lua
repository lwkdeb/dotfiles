--  __        ___           _
--  \ \      / (_)_ __   __| | _____      _____
--   \ \ /\ / /| | '_ \ / _` |/ _ \ \ /\ / / __|
--    \ V  V / | | | | | (_| | (_) \ V  V /\__ \
--     \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/ |___/
--

---------------
---- XWAYLAND ----
---------------

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

---------------------
---- WINDOW RULES ----
---------------------

-- Ignore maximize requests from all apps.
hl.window_rule({
    name           = "suppress-maximize-events",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = { 20, "monitor_h-120" },
    float = true,
})

-- Opacity rules for semi-transparent apps
-- active 0.95, inactive 0.85, fullscreen 1.0
hl.window_rule({
    match   = { class = "kitty" },
    opacity = "0.90 override 0.85 override 1.0 override",
})
--hl.window_rule({
--    match   = { class = "kitty" },
--    opacity = "0.95 override 0.85 override 1.0 override",
--})

-- Idle inhibit rules (uncomment as needed)
-- hl.window_rule({ match = { class = "^(.*celluloid.*)$|^(.*mpv.*)$|^(.*vlc.*)$" },   idle_inhibit = "fullscreen" })
-- hl.window_rule({ match = { class = "^(.*[Ss]potify.*)$" },                           idle_inhibit = "fullscreen" })
-- hl.window_rule({ match = { class = "^(.*LibreWolf.*)$|^(.*floorp.*)$|^(.*brave-browser.*)$|^(.*firefox.*)$|^(.*chromium.*)$|^(.*zen.*)$|^(.*vivaldi.*)$" }, idle_inhibit = "fullscreen" })


--hl.window_rule({
--    match = { class = "^(dev.zed.Zed)$" },
--    opacity = "0.89 override 0.95 override 1.0 override",
--
--})


-- pavucontrol
hl.window_rule({
    match  = { class = "^(org.pulseaudio.pavucontrol)$" },
    float  = true,
    size   = { 600, 500 },
    center = true,
})

-- waypaper
hl.window_rule({
    match  = { class = "^(waypaper)$" },
    float  = true,
    size   = { 600, 500 },
    center = true,
})

-- blueman-manager
hl.window_rule({
    match  = { class = "^(blueman-manager)$" },
    float  = true,
    size   = { 500, 500 },
    center = true,
})

-- GNOME To Do
hl.window_rule({
    match  = { class = "^(org.gnome.Todo)$" },
    float  = true,
    size   = { 550, 600 },
    center = true,
})



-- Disable blur for xwayland context menus
hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = true })

-- Disable blur for every window
-- hl.window_rule({ match = { class = ".*" }, no_blur = true })

-- Floating
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, size = { "(monitor_w*0.60)", "(monitor_h*0.65)" } })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to save)$" }, center = true })
hl.window_rule({ match = { title = "^(.*)(wants to save)$" }, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to open)$" }, center = true })
hl.window_rule({ match = { title = "^(.*)(wants to open)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, center = true })
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, center = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, center = true })
hl.window_rule({ match = { class = ".*plasmawindowed.*" }, float = true })
hl.window_rule({ match = { title = ".*Welcome" }, float = true })
hl.window_rule({ match = { class = "org.freedesktop.impl.portal.desktop.kde" }, size = { "(monitor_w*0.60)", "(monitor_h*0.65)" } })

-- Screen sharing
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, float = true })
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, pin = true })
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, move = { "(monitor_w*.5-window_w*.5)", "(monitor_h-window_h-12)" } })

-- --- Tearing ---
hl.window_rule({ match = { title = ".*\\.exe" }, immediate = true })
hl.window_rule({ match = { title = ".*minecraft.*" }, immediate = true })
hl.window_rule({ match = { class = "^(steam_app).*" }, immediate = true })

-- Fix Jetbrain IDEs focus/rerendering problem
hl.window_rule({ match = { class = "^jetbrains-.*$", float = 1, title = "^$|^\\s$|^win\\d+$" }, no_initial_focus = true })
