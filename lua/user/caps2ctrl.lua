-- 将键盘上的 Caps Lock 映射为 Ctrl 按键。
--
-- Autohotkay 代码
-- #SingleInstance Off
-- Capslock::
-- Send {LControl Down}
-- KeyWait, CapsLock
-- Send {LControl Up}
-- if (A_PriorKey = "CapsLock")
-- {
--     SetCapsLockState % !GetKeyState("CapsLock", "T")
-- }

local M = {}

if vim.fn.has 'win32' == 1 then
  M.cmd = 'caps2ctrl.exe' -- 需要将 caps2ctrl.exe 添加到path里
end

vim.fn.jobstart(M.cmd, {on_stdout = function (channel_id, data)
	vim.fn.append(vim.fn.line('$'), data)
end})
