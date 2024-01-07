local function is_windows()
    return vim.loop.os_uname().sysname == "Windows_NT"
end

local function is_linux()
    return vim.loop.os_uname().sysname == "Linux"
end

local function is_wsl()
    return string.match(
        vim.api.nvim_exec(
            [[
                redir => s
                silent! echo has('wsl')
                redir END
            ]],
            true
        ),
        "%d"
    ) == "1"
end

return function()
    if is_windows() or is_wsl() then
        local config_path = string.gsub(vim.fn.stdpath("config"), "\\", "/")
        local im_select_path = config_path .. "/bin/im-select.exe"

        local f = io.open(im_select_path, "r")
        if f ~= nil then
            io.close(f)

            local ime_autogroup =
                vim.api.nvim_create_augroup("ImeAutoGroup", { clear = true })

            local function autocmd(event, code)
                vim.api.nvim_create_autocmd(event, {
                    group = ime_autogroup,
                    callback = function()
                        vim.cmd(":silent :!" .. im_select_path .. " " .. code)
                    end,
                })
            end

            autocmd("InsertLeave", 1033)
            autocmd("InsertEnter", 2052)
            autocmd("VimLeavePre", 2052)
        end
    elseif is_linux() then
        vim.cmd([[
            let fcitx5state=system("fcitx5-remote")
            autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c
            autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif
        ]])
    end
end
