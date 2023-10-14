local function prefer_bin_from_venv(executable_name)
    -- Return the path to the executable if $VIRTUAL_ENV is set and the binary exists somewhere beneath the $VIRTUAL_ENV path, otherwise get it from Mason
    if vim.env.VIRTUAL_ENV then
        local paths = vim.fn.glob(vim.env.VIRTUAL_ENV .. "/**/bin/" .. executable_name, true, true)
        local executable_path = table.concat(paths, ", ")
        if executable_path ~= "" then
            -- vim.api.nvim_echo(
            -- 	{ { "Using path for " .. executable_name .. ": " .. executable_path, "None" } },
            -- 	false,
            -- 	{}
            -- )
            return executable_path
        end
    end

    local mason_registry = require("mason-registry")
    local mason_path = mason_registry.get_package(executable_name):get_install_path() .. "/venv/bin/" .. executable_name
    -- vim.api.nvim_echo({ { "Using path for " .. executable_name .. ": " .. mason_path, "None" } }, false, {})
    return mason_path
end

return {
    "mfussenegger/nvim-lint",
    -- https://github.com/mfussenegger/nvim-lint
    enabled = true,
    opts = function(_, opts)
        local linters = require("lint").linters
        linters.mypy.cmd = prefer_bin_from_venv("mypy")
        linters.sqlfluff.args = vim.list_extend({ "--dialect", "postgres" }, linters.sqlfluff.args)

        local linters_by_ft = {
            -- this extends lazyvim's nvim-lint setup
            -- https://www.lazyvim.org/extras/linting/nvim-lint
            c = { "clangtidy" },
            h = { "clangtidy" },
            cpp = { "clangtidy" },
            hpp = { "clangtidy" },
            hxx = { "clangtidy" },
            sh = { "shellcheck" },
        }

        -- extend opts.linters_by_ft
        for ft, linters_ in pairs(linters_by_ft) do
            opts.linters_by_ft[ft] = opts.linters_by_ft[ft] or {}
            vim.list_extend(opts.linters_by_ft[ft], linters_)
        end
    end,
}
