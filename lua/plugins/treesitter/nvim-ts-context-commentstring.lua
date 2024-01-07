return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  opts = function(_, opts)
    opts.config = vim.list_extend(opts.config or {}, { cpp = "// %s" })
  end,
}
