return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Find Subword Under"] = "<C-n>",
      ["Select Cursor Down"] = "<M-C-S-Down>",
      ["Select Cursor Up"] = "<M-C-S-Up>",

      ["Select All"] = "<leader><leader>A",
      ["Start Regex Search"] = "<leader><leader>/",
      ["Add Cursor Down"] = "<C-S-Down>",
      ["Add Cursor Up"] = "<C-S-Up>",
      ["Add Cursor At Pos"] = "<leader><leader><leader>",
      ["Visual Regex"] = "<leader><leader>/",
      ["Visual All"] = "<leader><leader>A",
      ["Visual Add"] = "<leader><leader>a",
      ["Visual Find"] = "<leader><leader>f",
      ["Visual Cursors"] = "<leader><leader>c",
    }
    vim.g.VM_Mono_hl = "FlashLabel"
    vim.g.VM_Extend_hl = "FlashCurrent"
    vim.g.VM_Cursor_hl = "FlashLabel"
    vim.g.VM_Insert_hl = "FlashCurrent"
  end,
}
