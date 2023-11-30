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
            function(choice0)
                if choice0 == "clang++" then
                    vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                        { prompt = "Select compiler options" },
                        function(choice1)
                            if choice1 == "Debug mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang++ ]] ..
                                    "-fsanitize=address " ..
                                    "-O3 " ..
                                    "-fno-omit-frame-pointer " ..
                                    "-xc++ " ..
                                    "-std=c++2a " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Release mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang++ ]] ..
                                    "-O3 " ..
                                    "-xc++ " ..
                                    "-std=c++2a " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Custom arguments" then
                                vim.cmd("w")
                                vim.ui.input({ prompt = "Enter Custom arguments" }, function(args)
                                    vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang++ ]] ..
                                        args ..
                                        [[ "$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                                end)
                            end
                        end
                    )
                elseif choice0 == "g++" then
                    vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                        { prompt = "Select compiler options" },
                        function(choice1)
                            if choice1 == "Debug mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 g++ ]] ..
                                    "-fsanitize=address " ..
                                    "-O3 " ..
                                    "-fno-omit-frame-pointer " ..
                                    "-xc++ " ..
                                    "-std=c++2a " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Release mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 g++ ]] ..
                                    "-O3 " ..
                                    "-xc++ " ..
                                    "-std=c++2a " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Custom arguments" then
                                vim.cmd("w")
                                vim.ui.input({ prompt = "Enter Custom arguments" }, function(args)
                                    vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 g++ ]] ..
                                        args ..
                                        [[ "$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                                end)
                            end
                        end
                    )
                end
            end
        )
    end

    local function RunCFile()
        vim.ui.select({ "clang", "gcc" },
            { prompt = "Select C compiler" },
            function(choice0)
                if choice0 == "clang" then
                    vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                        { prompt = "Select compiler options" },
                        function(choice1)
                            if choice1 == "Debug mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang ]] ..
                                    "-fsanitize=address " ..
                                    "-O3 " ..
                                    "-fno-omit-frame-pointer " ..
                                    "-std=c99 " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Release mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang ]] ..
                                    "-O3 " ..
                                    "-std=c99 " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Custom arguments" then
                                vim.cmd("w")
                                vim.ui.input({ prompt = "Enter Custom arguments" }, function(args)
                                    vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 clang ]] ..
                                        args ..
                                        [[ "$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                                end)
                            end
                        end
                    )
                elseif choice0 == "gcc" then
                    vim.ui.select({ "Debug mode", "Release mode", "Custom arguments" },
                        { prompt = "Select compiler options" },
                        function(choice1)
                            if choice1 == "Debug mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 gcc ]] ..
                                    "-fsanitize=address " ..
                                    "-O3 " ..
                                    "-fno-omit-frame-pointer " ..
                                    "-std=c99 " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Release mode" then
                                vim.cmd("w")
                                vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 gcc ]] ..
                                    "-O3 " ..
                                    "-std=c99 " ..
                                    "-Wall " ..
                                    "-Wextra " ..
                                    "-pedantic " ..
                                    [["$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                            elseif choice1 == "Custom arguments" then
                                vim.cmd("w")
                                vim.ui.input({ prompt = "Enter Custom arguments" }, function(args)
                                    vim.cmd([[AsyncRun -mode=term -pos=bottom -rows=15 gcc ]] ..
                                        args ..
                                        [[ "$(VIM_FILEPATH)" -o "/tmp/$(VIM_FILENOEXT)" && echo "\e[33m***!\e[32mCompiler success\e[33m!***\n-----------------------------------\e[m" && "/tmp/$(VIM_FILENOEXT)"]])
                                end)
                                vim.cmd([[!rm "/tmp/$(VIM_FILENOEXT)"]])
                            end
                        end
                    )
                end
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
