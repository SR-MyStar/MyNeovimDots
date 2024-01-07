local Util = require("lazyvim.util")

return {
  "SR-MyStar/yazi.nvim",
  lazy = true,
  event = "VeryLazy",
  opts = {},
  config = function()
    require("yazi").setup()
  end,
  keys = {
    {
      "<leader>e",
      mode = "n",
      function()
        require("yazi").yazi({ cwd = Util.root() })
      end,
      desc = "Yazi (root dir)",
    },
    {
      "<leader>E",
      mode = "n",
      function()
        require("yazi").yazi()
      end,
      desc = "Yazi (cwd)",
    },
  },
}
