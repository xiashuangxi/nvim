vim.g.tokyonight_style = "day"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.cmd [[colorscheme tokyonight]]




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