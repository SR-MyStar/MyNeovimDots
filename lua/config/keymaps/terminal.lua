local Util = require("lazyvim.util")

return {
    {
        keys = {
            ["<C-enter>"] = {
                function()
                    Util.terminal({}, {
                        cwd = Util.root(),
                        border = "single",
                    })
                end,
                "Terminal (root dir)",
            },
            ["<C-g>"] = {
                function()
                    Util.terminal({}, { border = "single" })
                end,
                "Terminal (cwd)",
            },
        },
        opts = { mode = "n" },
    },
    {
        keys = {
            ["<C-enter>"] = { "<cmd>close<cr>", "Hide Terminal" },
            ["<C-g>"] = { "<cmd>close<cr>", "Hide Terminal" },
        },
        opts = { mode = "t" },
    },
}
