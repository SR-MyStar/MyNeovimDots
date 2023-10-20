return {
    "stevearc/conform.nvim",
    dependencies = { "clangd_extensions.nvim", "mason.nvim" },
    opts = function()
        local opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                sh = { "shfmt" },
                c = { "clang_format" },
                cpp = { "clang_format" },
                objc = { "clang_format" },
                objcpp = { "clang_format" },
                cuda = { "clang_format" },
                proto = { "clang_format" },
                markdown = { "markdownlint" },
            },
            formatters = {
                stylua = {
                    prepend_args = {
                        "--indent-type",
                        "Spaces",
                        "--indent-width",
                        "4",
                    },
                },
            },
        }
        return opts
    end,
}
