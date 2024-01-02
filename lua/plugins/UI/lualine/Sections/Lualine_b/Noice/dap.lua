return {
    function()
        return "  " .. require("dap").status()
    end,
    cond = function()
        return package.loaded["dap"] and require("dap").status() ~= ""
    end,
}
