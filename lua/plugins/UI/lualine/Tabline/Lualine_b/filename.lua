return {
    function()
        local file = vim.fn.expand("%:p")
        if file == nil or #file == 0 then
            return ""
        end
        local size = vim.fn.getfsize(file)
        if size <= 0 then
            return ""
        end
        local suffixes = { "B", "K", "M", "G" }
        local i = 1
        while size > 1024 and i < #suffixes do
            size = size / 1024
            i = i + 1
        end
        local format = i == 1 and "󰈔 %d%s" or "󰈔 %.1f%s"
        return string.format(format, size, suffixes[i])
    end,
}
