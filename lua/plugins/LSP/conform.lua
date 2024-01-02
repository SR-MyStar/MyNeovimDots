return {
  "stevearc/conform.nvim",
  dependencies = "mason.nvim",
  opts = function()
    return {
      formatters_by_ft = {
        sh = { "shfmt", "beautysh" },
        shell = { "shfmt", "beautysh" },
        bash = { "shfmt", "shellharden", "beautysh" },
        csh = { "beautysh" },
        ksh = { "beautysh" },
        zsh = { "beautysh" },
        mksh = { "shfmt" },
        markdown = { "markdownlint" },
      },
    }
  end,
}
