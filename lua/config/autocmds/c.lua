local runFile = require("_env").dm_runFile

return function()
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "c",
        callback = function()
            vim.keymap.set("n", "<leader>cc", require(runFile .. ".run_c_file"), {
                buffer = true,
                desc = "Run C file",
            })
        end,
    })
end
