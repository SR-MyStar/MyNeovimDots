return {
  "stevearc/conform.nvim",
  dependencies = { "clangd_extensions.nvim", "mason.nvim" },
  opts = function(_, opts)
    if type(opts.formatters_by_ft) == "table" then
      opts.formatters_by_ft = vim.list_extend(opts.formatters_by_ft or {}, {
        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        objcpp = { "clang_format" },
        cuda = { "clang_format" },
        proto = { "clang_format" },
      })
    end
  end,
}
