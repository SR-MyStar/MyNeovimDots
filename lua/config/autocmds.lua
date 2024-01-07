-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local env = require("_env")

local function require_autocmds(file)
  if file.extension == "lua" and file.name:sub(1, 1) ~= "_" then
    require(env.d_autocmds .. "." .. file.name)()
  end
end

for _, file in
  pairs(
    vim.fn.readdir(
      vim.fn.stdpath("config")
        .. "/lua/"
        .. string.gsub(env.d_autocmds, "%.", "/")
    )
  )
do
  require_autocmds(env.f_split_filename(file))
end
