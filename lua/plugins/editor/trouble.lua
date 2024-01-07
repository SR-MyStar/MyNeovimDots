return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    event = "VeryLazy",
    priority = 1000,
    opts = function(_, opts)
      opts.integrations.lsp_trouble = true
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = true,
    event = "VeryLazy",
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      {
        "<leader>xr",
        function()
          require("trouble").open("lsp_references")
        end,
        desc = "Lsp References List (Trouble)",
      },
      {
        "<leader>xi",
        function()
          require("trouble").open("lsp_implementations")
        end,
        desc = "Lsp Implementations List (Trouble)",
      },
      {
        "<leader>xd",
        function()
          require("trouble").open("lsp_definitions")
        end,
        desc = "Lsp Definitions List (Trouble)",
      },
      {
        "<leader>xD",
        function()
          require("trouble").open("lsp_type_definitions")
        end,
        desc = "Lsp Type Definitions List (Trouble)",
      },
    },
  },
}
