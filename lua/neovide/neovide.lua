local M = {}

function M.init()
  M.config()
  if vim.g.transparent_background then
    M.background()
  end
  M.refresh(60, 5)
end

function M.config()
  -- 鼠标
  vim.o.mouse = "a"
  -- 行间距
  vim.opt.linespace = 2
  -- 字体
  vim.opt.guifont = { "JetBrainsMono Nerd Font Mono", "FZLanTingYuan-DB-GBK", ":h11" }
  -- 缩放
  vim.g.neovide_scale_factor = 0.9
  -- 填充
  vim.g.neovide_padding_top = 25
  vim.g.neovide_padding_bottom = 25
  vim.g.neovide_padding_right = 25
  vim.g.neovide_padding_left = 25
  -- 没有空闲
  vim.g.neovide_no_idle = true
  -- 退出需要确认
  vim.g.neovide_confirm_quit = true
  -- 是否全屏
  vim.g.neovide_fullscreen = false
  -- 记住以前窗口的大小
  vim.g.neovide_remember_window_size = true
  -- 使用super键位,比如<cmd>
  -- vim.g.neovide_input_use_logo = true
  -- 开启Alt和Meta按键
  vim.g.neovide_input_macos_alt_is_meta = true
  -- 触控板死亡地带
  -- vim.g.neovide_touch_deadzone = 6.0
  -- 触控板拖动超时
  -- vim.g.neovide_touch_drag_timeout = 0.17
  -- 开启光标粒子
  vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_cursor_vfx_particle_density = 20.0
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
end

function M.background()
  -- 设置透明背景
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.0
  vim.g.neovide_background_color = "#0f1117" .. alpha()
end

-- 设置fps
function M.refresh(run_fps, free_fps)
  -- 设置刷新率
  vim.g.neovide_refresh_rate = run_fps
  -- 空闲刷新率
  vim.g.neovide_refresh_rate_idle = free_fps
end

return M
