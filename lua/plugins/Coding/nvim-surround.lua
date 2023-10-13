return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "my",
        normal_cur = "mys",
        normal_line = "myS",
        normal_cur_line = "myS",
        visual = "mS",
        visual_line = "mgS",
        delete = "md",
        change = "mc",
        change_line = "mcS",
      },
    })
  end,
}
