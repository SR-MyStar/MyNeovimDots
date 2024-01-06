local asyncrun_args = require("_env").sm_asyncrun_args

return function(filetype)
    vim.ui.select(
        { "clang++", "g++" },
        { prompt = "Select C++ compiler" },
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
                        "c++2a",
                        "gnu++2a",
                        "c++2b",
                        "gnu++2b",
                        "c++20",
                        "gnu++20",
                        "c++17",
                        "gnu++17",
                        "c++14",
                        "gnu++14",
                        "c++11",
                        "gnu++11",
                        "c++03",
                        "gnu++03",
                        "c++98",
                        "gnu++98",
                        "c++1y",
                        "gnu++1y",
                        "c++1z",
                        "gnu++1z",
                    }, {
                        prompt = "Select the language standard to compile for C++",
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
                        vim.fn.execute("write")
                        vim.cmd(
                            "AsyncRun "
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
