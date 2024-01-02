local Util = require("lazyvim.util")

return {
    keys = {
        name = "+lazy/yazi",
        l = { "<cmd>Lazy<cr>", "Lazy" },
        L = { function() Util.news.changelog() end, "LazyVim Changelog" },
        f = {
            function()
                Util.terminal({ "yazi" }, {
                    cwd = Util.root(),
                    esc_esc = false,
                    ctrl_hjkl = false,
                })
            end,
            "Yazi (root dir)",
        },
        F = {
            function()
                Util.terminal({ "yazi" }, {
                    esc_esc = false,
                    ctrl_hjkl = false,
                })
            end,
            "Yazi (cwd)",
        },
    },
    opts = { mode = "n", prefix = "<leader>l" },
}
