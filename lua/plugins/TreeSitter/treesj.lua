return {
    "Wansmer/treesj",
    lazy = true,
    event = "VeryLazy",
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = {
        use_default_keymaps = false,
        max_join_length = 2147483647,
    },
    keys = {
        { "<leader>j", function() require("treesj").toggle() end, desc = "Toggle treesitter join" },
    },
}
