local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

-- theme
local themes = require('telescope.themes')
function themes.get_peony(opts)
	opts = opts or {}

	local theme_opts = {
		theme = 'peony',

		sorting_strategy = 'ascending',
		layout_strategy = "bottom_pane",
	    layout_config = {
	    	height = 25,
	    },
	    border = true,
	    borderchars = {
	    	prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
	    	results = { " " },
	    	preview = { "─", "│", "─", "│", "+", "+", "+", "+" },
	    },
	}
	if opts.layout_config and opts.layout_config.prompt_position == "bottom" then
    	theme_opts.borderchars = {
    		prompt = { " ", " ", "─", " ", " ", " ", "─", "─" },
    		results = { "─", " ", " ", " ", "─", "─", " ", " " },
    		preview = { "─", " ", "─", "│", "┬", "─", "─", "+" },
    	}
  	end
  	return vim.tbl_deep_extend("force", theme_opts, opts)
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = "🔍 ",
    selection_caret = " ",
    path_display = { "smart" },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim" -- add this value
    }
  },
  pickers = {
    find_files = {
      theme = "peony",
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    },
    buffers = {
    	theme = "peony",
    },
    live_grep = {
    	theme = "peony",
    },
    help_tags = {
    	theme = "peony",
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}