return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            keymaps = {
                insert = "<C-g>s",
                insert_line = "<C-g>S",
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
    end,
}
