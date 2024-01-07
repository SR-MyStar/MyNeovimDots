return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    event = "VeryLazy",
    priority = 1000,
    opts = function(_, opts)
      opts.integrations.neotree = true
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    event = "VeryLazy",
    opts = function(_, opts)
      opts.window.position = "right"
      opts.window.width = 27
    end,
    keys = function(_, keys)
      local count = 0
      for k, v in pairs(keys) do
        if v[1] == "<leader>e" or v[1] == "<leader>E" then
          keys[k] = nil
          count = count + 1
        end
        if count == 2 then
          break
        end
      end
    end,
  },
}
