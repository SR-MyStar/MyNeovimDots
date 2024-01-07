return {
    theme = "catppuccin",
    globalstatus = true,
    always_show_tabs = true,
    refresh = { statusline = 100000, tabline = 100000, winbar = 100000 },
    disabled_filetypes = {
        statusline = { "dashboard", "alpha" },
        winbar = { "dashboard", "alpha", "neo-tree", "toggleterm" },
        tab = { "dashboard", "alpha" },
    },
}
