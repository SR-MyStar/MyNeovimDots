local runFile = require("_env").dm_runFile
local testFile = require("_env").dm_testFile

return function()
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "rust",
        callback = function()
            vim.keymap.set("n", "<leader>cc", require(runFile .. ".run_rust_file"), {
                buffer = true,
                desc = "Run rust file",
            })
            -- vim.keymap.set("n", "<leader>cc", function()
            --     vim.fn.execute("write")
            --     vim.cmd("RustRunnables")
            -- end, {
            --     buffer = true,
            --     desc = "Rust runnables",
            -- })
            vim.keymap.set("n", "<leader>cd", require(testFile .. ".test_rust_file"), {
                buffer = true,
                desc = "Test rust file",
            })
        end,
    })
end
