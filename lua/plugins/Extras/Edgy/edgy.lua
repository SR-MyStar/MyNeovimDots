return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    require("edgy").setup({
      right = opts.left,
    })
    opts.left = {}
    return opts
  end,
}
