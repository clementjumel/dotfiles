local M = {}

M.general = {
	n = {
		-- vim-tmux-navigator
		["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window up" },
		-- nvim-tree
		["<leader>n"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvim-tree" },
		-- vim-fugitive
		["<leader>gs"] = {
			"<cmd> tab Git <CR> \
      <cmd> highlight diffAdded guifg=#abe9b3 <CR> \
      <cmd> highlight diffRemoved guifg=#f38ba8 <CR>",
			"Git status",
		},
		-- hop.nvim
		["s"] = {
			"<cmd> HopChar2 <CR>",
			"Jump to any combinaison of 2 keys",
		},
		["f"] = {
			"<cmd> HopChar1CurrentLine <CR>",
			"Jump to any key in the same line",
		},
		["<leader>w"] = {
			"<cmd> HopWordCurrentLineAC <CR>",
			"Jump to any word beginning after the cursor",
		},
		["<leader>b"] = {
			"<cmd> HopWordCurrentLineBC <CR>",
			"Jump to any word beginning before the cursor",
		},
		["<leader>e"] = {
			"<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true }) <CR>",
			"Jump to any word end after the cursor",
		},
		["<leader>ge"] = {
			"<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true }) <CR>",
			"Jump to any word end before the cursor",
		},
		["<leader>j"] = { "<cmd> HopLineAC <CR>", "Jump to any line after the cursor" },
		["<leader>k"] = { "<cmd> HopLineBC <CR>", "Jump to any line before the cursor" },
	},
	v = {
		-- hop.nvim
		["s"] = {
			"<cmd> HopChar2 <CR>",
			"Jump to any combinaison of 2 keys",
		},
		["f"] = {
			"<cmd> HopChar1CurrentLine <CR>",
			"Jump to any key in the same line",
		},
		["<leader>w"] = {
			"<cmd> HopWordCurrentLineAC <CR>",
			"Jump to any word beginning after the cursor",
		},
		["<leader>b"] = {
			"<cmd> HopWordCurrentLineBC <CR>",
			"Jump to any word beginning before the cursor",
		},
		["<leader>e"] = {
			"<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true }) <CR>",
			"Jump to any word end after the cursor",
		},
		["<leader>ge"] = {
			"<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true }) <CR>",
			"Jump to any word end before the cursor",
		},
		["<leader>j"] = { "<cmd> HopLineAC <CR>", "Jump to any line after the cursor" },
		["<leader>k"] = { "<cmd> HopLineBC <CR>", "Jump to any line before the cursor" },
	},
}

M.disabled = {
	n = {
		-- Makes <leader>w slow
		["<leader>wa"] = "",
		["<leader>wk"] = "",
		["<leader>wK"] = "",
		["<leader>wl"] = "",
		["<leader>wr"] = "",
	},
	v = {
		-- Makes <leader>w slow
		["<leader>wa"] = "",
		["<leader>wk"] = "",
		["<leader>wK"] = "",
		["<leader>wl"] = "",
		["<leader>wr"] = "",
	},
}

return M
