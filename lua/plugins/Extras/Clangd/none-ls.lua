return {
    "nvimtools/none-ls.nvim",
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
        local nls = require("null-ls")
        opts.sources = vim.list_extend(opts.sources or {}, { nls.builtins.formatting.clang_format })
        return opts
    end,
}
