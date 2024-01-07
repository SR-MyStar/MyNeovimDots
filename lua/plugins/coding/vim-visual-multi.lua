local wk = require("which-key")

return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Find Subword Under"] = "<C-n>",
      ["Select Cursor Down"] = "<M-C-S-j>",
      ["Select Cursor Up"] = "<M-C-S-k>",
      ["Select All"] = "<leader>mA",
      ["Start Regex Search"] = "<leader>m/",
      ["Add Cursor Down"] = "<C-S-j>",
      ["Add Cursor Up"] = "<C-S-k>",
      ["Add Cursor At Pos"] = "<leader>ma",
      ["Visual Regex"] = "<leader>m/",
      ["Visual All"] = "<leader>mA",
      ["Visual Add"] = "<leader>ma",
      ["Visual Find"] = "<leader>mf",
      ["Visual Cursors"] = "<leader>mc",
    }
    vim.g.VM_Mono_hl = "FlashLabel"
    vim.g.VM_Extend_hl = "FlashCurrent"
    vim.g.VM_Cursor_hl = "FlashLabel"
    vim.g.VM_Insert_hl = "FlashCurrent"
    wk.register({
      ["<leader>m"] = { name = "+visual-multi" },
    }, { mode = "n" })
    wk.register({
      ["<leader>m"] = { name = "+visual-multi" },
    }, { mode = "v" })
  end,
}
