-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Fcitx5 --
local input_toggle = 1

function Fcitx5en()
  local input_status = tonumber(io.popen("fcitx5-remote"):read("*all"))
  if input_status == 2 then
    input_toggle = 1
    os.execute("fcitx5-remote -c")
  end
end

function Fcitx5zh()
  local input_status = tonumber(io.popen("fcitx5-remote"):read("*all"))
  if input_status ~= 2 and input_toggle == 1 then
    os.execute("fcitx5-remote -o")
    input_toggle = 0
  end
end

local function is_cursor_in_comment()
  local ts_utils = require("nvim-treesitter.ts_utils")

  local current_node = ts_utils.get_node_at_cursor()
  local current_pos = vim.fn.getcurpos()
  current_pos[3] = current_pos[3] - 1
  vim.fn.setpos(".", current_pos)
  local previous_node = ts_utils.get_node_at_cursor()

  return (current_node and current_node:type() == "comment") or (previous_node and previous_node:type() == "comment")
end

function change_cursor_in_comment()
  local is_in_comment = is_cursor_in_comment()
  if is_in_comment then
    Fcitx5zh()
  end
end

vim.api.nvim_create_autocmd("InsertLeave", { pattern = "*", command = "lua Fcitx5en()" })
vim.api.nvim_create_autocmd("InsertEnter", { pattern = { "*.md", "*.txt" }, command = "lua Fcitx5zh()" })
vim.api.nvim_create_autocmd(
  "InsertEnter",
  { pattern = { "*.c", "*.cpp", "*.lua", "*.py", "*.sh" }, command = "lua change_cursor_in_comment()" }
)

vim.cmd([[
function! EnterComment()
    lua Fcitx5zh()
endfunction
]])

vim.cmd("autocmd InsertCharPre *.lua if v:char == '-' && getline('.')[col('.')-2]=='-' | call EnterComment() | endif")
vim.cmd(
  "autocmd InsertCharPre *.c,*.cpp if v:char == '/' && getline('.')[col('.')-2]=='/' | call EnterComment() | endif"
)
vim.cmd("autocmd InsertCharPre *.py,*.sh if line('.') != 1 && v:char == '#' | call EnterComment() | endif")
