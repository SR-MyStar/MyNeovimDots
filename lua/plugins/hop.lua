return {
  "phaazon/hop.nvim",
  branch = "v2.0",
  config = function()
    require("hop").setup({ keys = "asdfghjkl" })
    vim.api.nvim_command("highlight HopUnmatched guifg=none guibg=none guisp=none ctermfg=none")
    vim.api.nvim_command("highlight HopNextKey guifg=#ffffff cterm=bold")
    vim.api.nvim_command("highlight HopNextKey1 guifg=#ffffff cterm=bold")
    vim.api.nvim_command("highlight HopNextKey2 guifg=#ffffff cterm=bold")
    vim.api.nvim_command("highlight HopCursor guifg=#000000 guibg=#FF007C cterm=bold")
  end,
  keys = {
    -- {
    --   ";",
    --   mode = { "n", "v", "x", "o" },
    --   function()
    --     require("hop").hint_words()
    --   end,
    --   desc = "Jump to World",
    -- },
    {
      ";",
      mode = { "n", "v", "x", "o" },
      function()
        require("hop").hint_lines_skip_whitespace()
      end,
      desc = "Jump to Line",
    },
  },
}
