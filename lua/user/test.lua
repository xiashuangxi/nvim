
-- test

-- vim.api.nvim_echo({{"hello ~ "},{""}}, false, {})


-- require'whid'

-- local status_ok, command_tab = pcall(require, "command_tab")
-- if not status_ok then
--   return
-- end

-- CmdlineEnter
-- CmdlineChanged 
-- vim.api.nvim_create_autocmd(
--     { "CmdlineChanged" },
--     { pattern = { "*" }, command = ':lua require"command_tab".on_change()' }
-- )
-- require 'command_tab'.on_change()


-- local fineline = require('fine-cmdline')
-- local fn = fineline.fn

-- fineline.setup({
--   cmdline = {
--     -- Prompt can influence the completion engine.
--     -- Change it to something that works for you
--     prompt = ': ',

--     -- Let the user handle the keybindings
--     enable_keymaps = false
--   },
--   popup = {
--     buf_options = {
--       -- Setup a special file type if you need to
--       filetype = 'FineCmdlinePrompt'
--     }
--   },
--   hooks = {
--     set_keymaps = function(imap, feedkeys)
--       -- Restore default keybindings...
--       -- Except for `<Tab>`, that's what everyone uses to autocomplete
--       imap('<Esc>', fn.close)
--       imap('<C-c>', fn.close)

--       imap('<Up>', fn.up_search_history)
--       imap('<Down>', fn.down_search_history)
--     end
--   }
-- })

-----------------------
-- echo minibuffer text
-----------------------
-- local function minibuffer_text()
-- 	local minibuffer_text = { { ' ' } }
-- 	table.insert(minibuffer_text, {"MiniBuffer_Text", "MiniBufferTextGroup"})
-- 	table.insert(minibuffer_text, {"Key", "MiniBufferText"})
-- 	table.insert(minibuffer_text, {"Label", "MiniBufferTextSeparator"})
-- 	vim.api.nvim_echo(minibuffer_text, false, {})
-- end
-----------------------
-- minibuffer layout
-----------------------
-- local M = {}
-- M.win = nil
-- M.buf = nil
-- M.opts = {
-- 	relative = "editor",
--     width = 100,
--     height = 15,
--     focusable = false,
--     anchor = "SW",
--     border = 2,
--     row = 3,
--     col = 4,
--     style = "minimal",
-- }
-- M.buf = vim.api.nvim_create_buf(false, true)
-- M.win = vim.api.nvim_open_win(M.buf, false, M.opts)
-- vim.api.nvim_buf_set_option(M.buf, "filetype", "WhichKey")
-- vim.api.nvim_buf_set_option(M.buf, "buftype", "nofile")
-- -- vim.api.nvim_win_hide(M.win)
-- vim.api.nvim_win_set_option(M.win, "winhighlight", "NormalFloat:WhichKeyFloat")
-- -- vim.api.nvim_win_set_option(M.win, "foldmethod", "manual")
-- -- vim.api.nvim_win_set_option(M.win, "winblend", 0)
-- local function minibuffer_layout()
-- 	local w_width = vim.api.nvim_win_get_width(M.win)
-- 	local width = 100

-- 	local column_width = 100

-- 	-- minibuffer_text()
-- end

-- while true do
-- minibuffer_layout()
-- require('command_tab.view').on_keys()
-- vim.cmd([[redraw]]) -- 重绘UI
-- vim.api.nvim_buf_add_highlight(M.buf, 0, "String", 1, 0, 4) -- 给缓冲区加高亮

-- nvim_buf_clear_namespace -- 清除命名空间对象
-- end


-- vim.api.nvim_create_autocmd(
--     { "CmdlineChanged" },
--     { pattern = { "*" }, command = ':lua print("xx")' }
-- )

----------------------------------------------------------------
-- ui
----------------------------------------------------------------

-- local function open_window()
-- 	buf = vim.api.nvim_create_buf(false, true)
-- 	local border_buf = vim.api.nvim_create_buf(false, true)

-- 	-- local border_opts = {
-- 	-- 	style = 'minimal',
-- 	-- 	relative = 'editor',
-- 	-- 	width = 102,
-- 	-- 	height = 10,
-- 	-- 	row = vim.o.lines - vim.o.cmdheight,
-- 	-- 	col = 0,
-- 	-- }

-- 	local opts = {
-- 		style = 'minimal',
-- 		relative = 'editor',
-- 		focusable = false,
-- 		width = vim.o.columns,
-- 		height = 10,
-- 		row = vim.o.lines - vim.o.cmdheight-2,
-- 		col = 0,
-- 	}

-- 	-- local border_lines = { '+' .. string.rep( '-', 100) .. '+' }
-- 	-- for i = 1, 10 do
-- 	-- 	table.insert( border_lines, '|' .. string.rep( ' ', 100 ) .. '|' )
-- 	-- end
-- 	-- table.insert(border_lines, '+' .. string.rep( '-', 100) .. '+' )
-- 	-- vim.api.nvim_buf_set_lines(border_buf, 0, -1, false, border_lines)

-- 	-- local border_win = vim.api.nvim_open_win(border_buf, true, border_opts)
-- 	win = vim.api.nvim_open_win(buf, true, opts)
-- 	vim.api.nvim_command('au BufWipeout <buffer> exe "silent bwipeout! "' .. border_buf)

-- end
-- vim.api.nvim_create_autocmd(
--     { "CmdlineChanged" },
--     { pattern = { "*" }, command = ':lua require"command_tab".open_window()' }
-- )
-- require"commanxd_tab".setupss()
-- local statusline = require('statusline')
-- statusline.tabline = false


-- require('wlsample.bubble')

-----------------------------------------------------------------------------

-- local command = string.format(
-- 	"highlight! default xName guibg=green ctermbg=green"
-- 	)
-- vim.api.nvim_command(command)

-- vim.api.nvim_command("syn clear")
-- vim.api.nvim_command("syn keyword Conditional if")
-- vim.api.nvim_command("syn keyword InternalFunction print input")
-- vim.api.nvim_command("hi Conditional guifg=#8DA5ed")
-- vim.api.nvim_command("hi InternalFunction guifg=Orchid")

--  hi Conditional guifg=#8DA5ed
--  |        |	          |
-- 命令 自定义关键字    字体颜色

-----------------------------------------------------------------------------


-- for hl_name, hl in pairs(vim.api.nvim__get_hl_defs(0)) do
-- 	print(  hl[foreground])
-- end

-- for k,v in pairs(g:ada#Keywords	)
-- 	print(k)
-- end



------------------------------------------------
-- 修改光标颜色
-- highlight Cursor guifg=white guibg=black
-- highlight iCursor guifg=white guibg=steelblue
-- set guicursor=n-v-c:block-Cursor
-- set guicursor+=i:ver100-iCursor
-- set guicursor+=n-v-c:blinkon0
-- set guicursor+=i:blinkwait10
-- i表示插入模式、视觉v、c命令和n正常

-- 红：#ea6e52

-- require("xxxx").setup()

-- 1、在 nvc 模式下的颜色
-- 2、在 i 模式下的颜色
-- 4、在 i 模式下的光标的宽度 25%
-- vim.cmd [[
-- highlight Cursor guifg=white guibg=#ea6e52
-- highlight iCursor guifg=white guibg=#ea6e52
-- set guicursor=n-v-c:block-Cursor
-- set guicursor+=i:ver25-iCursor
-- set guicursor+=n-v-c:blinkon0
-- set guicursor+=i:blinkwait10
-- ]]

-- require('erd.attention').setup()
-- require('erd.ladder').setup()
-- require('erd.ladder22').setup()
-- require("tabby").setup()

-- highlight! default xName guibg=green ctermbg=green
-- vim.cmd('highlight! default Function guibg="#ff0000" ctermbg="#ff0000"')

-- local win_id = vim.api.nvim_get_current_win()
-- local win_opts = {
-- 	relative = 'win',
-- 	win = win_id,
-- 	bufpos = {0, 0},
-- 	width = 1,
-- 	height = 100,
-- 	row = 0,
-- 	col = 0,
-- 	focusable = false,
-- 	style = 'minimal',
--     }

--     local buf = vim.api.nvim_create_buf(true, true)
--     vim.api.nvim_buf_set_lines(buf, 0, -1, true, {"xxx"})
--     -- table.insert(M.buf, buf)

--     local n_win_id = vim.api.nvim_open_win(buf, false, win_opts)
--     vim.api.nvim_win_set_option(n_win_id, 'winhl', 'Normal:Error')
--     -- table.insert(M.win_id, n_win_id)



-- vim.cmd [[let g:quickui_show_tip = 1]]
-- vim.cmd [[noremap <space><space> :call quickui#menu#open()<cr>]]

require('erd.ruler').setup()