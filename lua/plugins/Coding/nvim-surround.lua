local wk = require("which-key")

return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            keymaps = {
                insert = false,
                insert_line = false,
                normal = "my",
                normal_cur = "mym",
                normal_line = "myM",
                normal_cur_line = "myM",
                visual = "mM",
                visual_line = "mgM",
                delete = "md",
                change = "mc",
                change_line = "mcM",
            },
        })
        wk.register({
            ["gs"] = { name = "+Mini surround" },
            ["m"] = { name = "+surround" },
        }, { mode = "n" })
        wk.register({
            ["<C-g>"] = { name = "+surround" },
        }, { mode = "i" })
    end,
}
