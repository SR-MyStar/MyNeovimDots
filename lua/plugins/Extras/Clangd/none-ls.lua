return {
    "nvimtools/none-ls.nvim",
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
        local nls = require("null-ls")
        if type(opts.sources) == "table" then
            vim.list_extend(opts.sources, { nls.builtins.formatting.clang_format })
        end
        return opts
    end,
}
