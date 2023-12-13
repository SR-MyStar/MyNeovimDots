-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local function map(mode, lhs, rhs, opts)
    local keys = require("lazy.core.handler").handlers.keys
    ---@cast keys LazyKeysHandler
    -- do not create the keymap if a lazy keys handler exists
    if not keys.active[keys.parse({ lhs, mode = mode }).id] then
        opts = opts or {}
        opts.silent = opts.silent ~= false
        if opts.remap and not vim.g.vscode then
            opts.remap = nil
        end
        vim.keymap.set(mode, lhs, rhs, opts)
    end
end

local function del(mode, lhs, opts)
    local keys = require("lazy.core.handler").handlers.keys
    ---@cast keys LazyKeysHandler
    -- do not create the keymap if a lazy keys handler exists
    if not keys.active[keys.parse({ lhs, mode = mode }).id] then
        opts = opts or {}
        opts.silent = opts.silent ~= false
        if opts.remap and not vim.g.vscode then
            opts.remap = nil
        end
        vim.keymap.del(mode, lhs, opts)
    end
end

map("n", "<leader>cc", function()
    local function RunCppFile()
        vim.ui.select({ "clang++", "g++" },
            { prompt = "Select C++ compiler" },
            function(cppCompiler)
                vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                    { prompt = "Select compiler options" },
                    function(compileMode)
                        vim.ui.select({
                                "c++2a", "gnu++2a",
                                "c++2b", "gnu++2b",
                                "c++20", "gnu++20",
                                "c++17", "gnu++17",
                                "c++14", "gnu++14",
                                "c++11", "gnu++11",
                                "c++03", "gnu++03",
                                "c++98", "gnu++98",
                                "c++1y", "gnu++1y",
                                "c++1z", "gnu++1z",
                            }, { prompt = "Select the language standard to compile for C++" },
                            function(cppVersion)
                                local args
                                if compileMode == "Debug mode" then
                                    args = "-fsanitize=address " ..
                                        "-O0 " ..
                                        "-fno-omit-frame-pointer "
                                elseif compileMode == "Release mode" then
                                    args = "-O3 "
                                elseif compileMode == "Custom arguments" then
                                    ::inputCustomArguments::
                                    vim.ui.input({ prompt = "Enter Custom arguments" },
                                        function(input)
                                            args = input
                                        end
                                    )
                                    if args:find("-std=") ~= nil then
                                        vim.notify("Don't input \"-std=\" argument", vim.log.levels.ERROR)
                                        goto inputCustomArguments
                                    end
                                end
                                vim.cmd("w")
                                vim.cmd("AsyncRun -mode=term -pos=bottom -rows=15 "
                                    .. cppCompiler .. ' '
                                    .. "-std="
                                    .. cppVersion .. ' '
                                    .. args
                                    .. "-xc++ "
                                    .. "-Wall "
                                    .. "-Wextra "
                                    .. "-pedantic "
                                    .. [["$(VIM_FILEPATH)"]]
                                    .. [[ -o "/tmp/$(VIM_FILENOEXT)"]]
                                    .. [[ && echo "\e[33m***!\e[32mCompiler success\e[33m!***]]
                                    .. [[\n-----------------------------------\e[m"]]
                                    .. [[ && "/tmp/$(VIM_FILENOEXT)"]])
                            end
                        )
                    end
                )
            end
        )
    end

    local function RunCFile()
        vim.ui.select({ "clang", "gcc" },
            { prompt = "Select C compiler" },
            function(cCompiler)
                if cCompiler == nil then
                    return
                end
                vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                    { prompt = "Select compiler options" },
                    function(compileMode)
                        if compileMode == nil then
                            return
                        end
                        vim.ui.select({
                                "c17", "gnu17",
                                "c11", "gnu11",
                                "c99", "gnu99",
                                "c90", "gnu90",
                                "c89", "gnu89",
                                "iso9899:2017",
                                "iso9899:2011",
                                "iso9899:1999",
                                "iso9899:199409",
                                "iso9899:1990",
                            }, { prompt = "Select the language standard to compile for C" },
                            function(cVersion)
                                if cVersion == nil then
                                    return
                                end
                                local args
                                if compileMode == "Debug mode" then
                                    args = "-fsanitize=address " ..
                                        "-O0 " ..
                                        "-fno-omit-frame-pointer "
                                elseif compileMode == "Release mode" then
                                    args = "-O3 "
                                elseif compileMode == "Custom arguments" then
                                    ::inputCustomArguments::
                                    vim.ui.input({ prompt = "Enter Custom arguments" },
                                        function(input)
                                            args = input
                                        end
                                    )
                                    if args:find("-std=") ~= nil then
                                        vim.notify("Don't input \"-std=\" argument", vim.log.levels.ERROR)
                                        goto inputCustomArguments
                                    end
                                end
                                vim.cmd("w")
                                vim.cmd("AsyncRun -mode=term -pos=bottom -rows=15 "
                                    .. cCompiler .. ' '
                                    .. "-std="
                                    .. cVersion .. ' '
                                    .. args
                                    .. "-Wall "
                                    .. "-Wextra "
                                    .. "-pedantic "
                                    .. [["$(VIM_FILEPATH)"]]
                                    .. [[ -o "/tmp/$(VIM_FILENOEXT)"]]
                                    .. [[ && echo "\e[33m***!\e[32mCompiler success\e[33m!***]]
                                    .. [[\n-----------------------------------\e[m"]]
                                    .. [[ && "/tmp/$(VIM_FILENOEXT)"]])
                            end
                        )
                    end
                )
            end
        )
    end

    if vim.bo.filetype == "cpp" then
        RunCppFile()
    elseif vim.bo.filetype == "c" then
        RunCFile()
    else
        vim.notify("Filetype not supported", vim.log.levels.ERROR)
    end
end, { desc = "Run file" })
