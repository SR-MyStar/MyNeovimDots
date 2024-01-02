return {
    {
        function()
            local line = vim.fn.line(".")
            local col = vim.fn.virtcol(".")
            return string.format(" %d:%-2d", line, col)
        end,
        padding = { left = 1, right = 1 },
    },
}
