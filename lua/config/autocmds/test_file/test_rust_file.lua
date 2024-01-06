local Util = require("lazyvim.util")
local asyncrun_args = require("_env").sm_asyncrun_args

return function()
    vim.fn.execute("write")
    -- vim.cmd("AsyncRun " .. asyncrun_args
    --     .. " -cwd=" .. Util.root() .. ' '
    --     .. "cargo test "
    --     .. vim.fn.input("Enter custom compiler flags: "))
    vim.cmd("RustTest! " .. vim.fn.input("Enter custom compiler flags: "))
end
