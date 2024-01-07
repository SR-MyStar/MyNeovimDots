local asyncrun_args = require("_env").sm_asyncrun_args

return function()
    vim.ui.select(
        { "clang", "gcc" },
        { prompt = "Select C compiler" },
        function(compiler)
            if compiler == nil then
                return
            end
            vim.ui.select(
                { "Debug mode", "Release mode" },
                { prompt = "Select compiler mode" },
                function(compileMode)
                    if compileMode == nil then
                        return
                    end
                    vim.ui.select({
                        "c17",
                        "gnu17",
                        "c11",
                        "gnu11",
                        "c99",
                        "gnu99",
                        "c90",
                        "gnu90",
                        "c89",
                        "gnu89",
                        "iso9899:2017",
                        "iso9899:2011",
                        "iso9899:1999",
                        "iso9899:199409",
                        "iso9899:1990",
                    }, {
                        prompt = "Select the language standard to compile for C",
                    }, function(version)
                        if version == nil then
                            return
                        end
                        if compileMode == "Debug mode" then
                            ARGS = "-fsanitize=address "
                                .. "-O0 "
                                .. "-fno-omit-frame-pointer "
                        else
                            ARGS = "-O3 "
                        end
                        vim.api.nvim_command(
                            "w\nAsyncRun "
                                .. asyncrun_args
                                .. " "
                                .. compiler
                                .. " "
                                .. "-std="
                                .. version
                                .. " "
                                .. ARGS
                                .. vim.fn.input("Enter custom compiler flags: ")
                                .. " "
                                .. "-Wall "
                                .. "-Wextra "
                                .. "-pedantic "
                                .. [["$(VIM_FILEPATH)"]]
                                .. [[ -o "/tmp/$(VIM_FILENOEXT)"]]
                                .. [[ && echo "\e[33m***!\e[32mCompiler success\e[33m!***]]
                                .. [[\n-----------------------------------\e[m"]]
                                .. [[ && "/tmp/$(VIM_FILENOEXT)"]]
                        )
                    end)
                end
            )
        end
    )
end
