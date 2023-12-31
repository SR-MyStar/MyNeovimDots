local Util = require("lazyvim.util")
local asyncrun_args = require("_env").sm_asyncrun_args

return function()
  vim.ui.select(
    { "cargo", "rustc" },
    { prompt = "Select rust compiler" },
    function(compile)
      if compile == nil then
        return
      end
      vim.ui.select(
        { "Debug mode", "Release mode" },
        { prompt = "Select compiler mode" },
        function(compileMode)
          if compileMode == nil then
            return
          end

          if compile == "rustc" then
            local args = " -C codegen-units=$(nproc) "
            if compileMode == "Debug mode" then
              args = args .. "-C debuginfo=2 "
            else
              args = args .. "-C opt-level=3 " .. "-C lto "
            end
            vim.api.nvim_command(
              "w\nAsyncRun "
                .. asyncrun_args
                .. " -cwd="
                .. Util.root()
                .. " "
                .. compile
                .. args
                .. vim.fn.input("Enter custom compiler flags: ")
                .. " "
                .. [["$(VIM_FILEPATH)"]]
                .. [[ --out-dir "/tmp"]]
                .. [[ && echo "\e[33m***!\e[32mCompiler success\e[33m!***]]
                .. [[\n-----------------------------------\e[m"]]
                .. [[ && "/tmp/$(VIM_FILENOEXT)"]]
            )
          else
            local args = " "
            if compileMode == "Release" then
              args = " --release "
            end
            vim.api.nvim_command(
              "w\nAsyncRun "
                .. asyncrun_args
                .. " -cwd="
                .. Util.root()
                .. " "
                .. compile
                .. " run"
                .. args
                .. vim.fn.input("Enter custom compiler flags: ")
            )
          end
        end
      )
    end
  )
end
