return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  ---@type Flash.Config
  opts = {
    highlight = { backdrop = false },
    labels = "asdfghjklqwertyuiop",
  },
  vim.api.nvim_command("highlight FlashMatch guifg=#FFFFFF guibg=none cterm=bold"),
  vim.api.nvim_command("highlight FlashCurrent guifg=#000000 guibg=#FF007C cterm=bold"),

  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
