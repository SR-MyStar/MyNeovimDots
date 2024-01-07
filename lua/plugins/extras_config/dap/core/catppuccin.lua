return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  event = "VeryLazy",
  priority = 1000,
  opts = function(_, opts)
    opts.integrations.dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    }
  end,
}
