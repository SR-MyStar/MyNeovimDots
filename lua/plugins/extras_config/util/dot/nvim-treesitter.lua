return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      table.insert(opts.ensure_installed, "hypr")
    end
  end,
}
