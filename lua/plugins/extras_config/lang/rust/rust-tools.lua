return {
    "simrat39/rust-tools.nvim",
    lazy = true,
    opts = function(_, opts)
        if type(opts.tools.inlay_hints) == "table" then
            opts.tools.inlay_hints.auto = false
        else
            opts.tools.inlay_hints = { auto = false }
        end
    end,
}
