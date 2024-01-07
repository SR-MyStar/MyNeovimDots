return {
  function()
    local line = vim.fn.line(".")
    local column = vim.fn.virtcol(".")
    return string.format(" %d:%-2d", line, column)
  end,
  padding = { left = 1, right = 1 },
}
