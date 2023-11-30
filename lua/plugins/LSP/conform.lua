return {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    opts = function()
        local opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                sh = { "shfmt" },
                markdown = { "markdownlint" },
            },
        }
        return opts
    end,
}
