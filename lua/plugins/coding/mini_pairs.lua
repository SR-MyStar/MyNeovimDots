return {
  "echasnovski/mini.pairs",
  event = "VeryLazy",
  config = function()
    require("mini.pairs").setup()
    require("mini.pairs").unmap("i", "'", "")
  end,
}
