return {
  "skywind3000/asyncrun.vim",
  cmd = "AsyncRun",
  config = function()
    local g = vim.g

    g.asyncrun_open = 6
    g.asyncrun_bell = 1
  end,
}
