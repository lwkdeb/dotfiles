hl.curve("snappy", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.animation({ leaf = "global", bezier = "snappy", enabled = true, speed = 2 })


hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 0,
        border_size      = true,
        col              = {
            active_border   = { colors = { "rgba(3a3a3aaa)"}, angle = 45 },
            inactive_border = "rgba(3a3a3aaa)",
        },
        resize_on_border = true,
        allow_tearing    = false,
        layout           = "dwindle",
    },

    decoration = {
        rounding         = 4,
        rounding_power   = 4,
        active_opacity   = 1.0,
        inactive_opacity = 0.96,
        shadow           = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },

        blur             = {
            enabled            = true,
            passes             = 2,
            --size               = 6,
        },
    },

    dwindle = {
        preserve_split = true, -- You probably want this
    },
    master = {
        new_status = "master",
    },
})
