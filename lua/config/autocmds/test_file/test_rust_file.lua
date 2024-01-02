local Util = require("lazyvim.util")
local asyncrunArgs = require("_env").sm_asyncrunArgs

return function()
    vim.fn.execute("write")
    vim.cmd("AsyncRun " .. asyncrunArgs
        .. " -cwd=" .. Util.root() .. ' '
        .. "cargo test "
        .. vim.fn.input("Enter custom compiler flags: "))
end
