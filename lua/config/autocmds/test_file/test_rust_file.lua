local Util = require("lazyvim.util")
local asyncrun_args = require("_env").sm_asyncrun_args

return function()
    -- vim.api.nvim_command("w\nAsyncRun " .. asyncrun_args
    --     .. " -cwd=" .. Util.root() .. ' '
    --     .. "cargo test "
    --     .. vim.fn.input("Enter custom compiler flags: "))
    vim.api.nvim_command(
        "w\nRustTest! " .. vim.fn.input("Enter custom compiler flags: ")
    )
    vim.opt_local.number = false
    vim.cmd("startinsert!")
end
