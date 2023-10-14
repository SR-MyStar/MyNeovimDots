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
    "stevearc/conform.nvim",
    -- https://github.com/stevearc/conform.nvim
    enabled = true,
    opts = function(_, opts)
        local formatters = require("conform.formatters")
        formatters.black.command = prefer_bin_from_venv("black")
        formatters.stylua.args =
            vim.list_extend({ "--indent-type", "Spaces", "--indent-width", "4" }, formatters.stylua.args)

        local formatters_by_ft = {
            -- this extends lazyvim's conform setup
            -- https://www.lazyvim.org/extras/formatting/conform
            c = { "clang-format" },
            h = { "clang-format" },
            cpp = { "clang-format" },
            hpp = { "clang-format" },
            hxx = { "clang-format" },
            lua = { "stylua" },
            sh = { "shfmt" },
        }

        -- extend opts.formatters_by_ft
        -- NOTE: conform.nvim can use a sub-list to run only the first available formatter (see docs)
        for ft, formatters_ in pairs(formatters_by_ft) do
            opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
            vim.list_extend(opts.formatters_by_ft[ft], formatters_)
        end
    end,
}
