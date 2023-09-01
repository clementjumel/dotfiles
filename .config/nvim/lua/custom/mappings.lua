local M = {}

M.general = {
	n = {
		-- vim-tmux-navigator
		["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window up" },
		-- splits
		["<leader>vs"] = { "<cmd> vsplit <CR>", "Vertical split" },
		["<leader>hs"] = { "<cmd> split <CR>", "Horizontal split" },
		-- nvim-tree
		["<leader>n"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvim-tree" },
		-- nvterm
		["<leader>te"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal terminal",
		},
		-- telescope
		["<leader>fb"] = {
			function()
				require("telescope.builtin").buffers()
			end,
			"Find buffers",
		},
		["<leader>fcm"] = {
			function()
				require("telescope.builtin").git_commits()
			end,
			"Find git commits",
		},
		["<leader>ff"] = {
			function()
				require("telescope.builtin").find_files({
					find_command = { "rg", "--files", "--hidden" },
				})
			end,
			"Find files",
		},
		["<leader>fg"] = {
			function()
				require("telescope.builtin").live_grep()
			end,
			"Find with live grep",
		},
		["<leader>fh"] = {
			function()
				require("telescope").extensions.harpoon.marks()
			end,
			"Find harpoon marks",
		},
		["<leader>fm"] = {
			function()
				require("telescope.builtin").marks()
			end,
			"Find marks",
		},
		["<leader>fo"] = {
			function()
				require("telescope.builtin").oldfiles({
					cwd_only = true,
				})
			end,
			"Find old files",
		},
		["<leader>fsh"] = {
			function()
				require("telescope.builtin").git_stash()
			end,
			"Find in git stash",
		},
		["<leader>fst"] = {
			function()
				require("telescope.builtin").git_status()
			end,
			"Find in git status",
		},
		["<leader>ftd"] = {
			"<cmd> TodoTelescope <CR>",
			"Find todo comments",
		},
		["<leader>fw"] = {
			function()
				require("telescope.builtin").grep_string()
			end,
			"Find the word or selection under the cursor",
		},
		-- vim-fugitive
		["<leader>gs"] = {
			"<cmd> tab Git <CR> \
      <cmd> highlight diffAdded guifg=#abe9b3 <CR> \
      <cmd> highlight diffRemoved guifg=#f38ba8 <CR>",
			"Git status",
		},
		-- hop.nvim
		["s"] = {
			function()
				require("hop").hint_char2()
			end,
			"Jump to a combinaison of 2 keys",
		},
		["f"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following key inline",
		},
		["F"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding key inline",
		},
		["t"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
					hint_offset = -1,
				})
			end,
			"Jump to before a following key inline",
		},
		["T"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
					hint_offset = 1,
				})
			end,
			"Jump to after a preceding key inline",
		},
		["<leader>w"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word beginning inline",
		},
		["<leader>b"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word beginning inline",
		},
		["<leader>e"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word end inline",
		},
		["<leader>ge"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word end inline",
		},
		["<leader>j"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
				})
			end,
			"Jump to a following line",
		},
		["<leader>k"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
				})
			end,
			"Jump to a preceding line",
		},
		-- harpoon
		["<leader>ha"] = {
			function()
				require("harpoon.mark").add_file()
			end,
			"Harpoon a file",
		},
		["<leader>hm"] = {
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			"Toggle harpoon menu",
		},
		["gh"] = {
			function()
				require("harpoon.ui").nav_file(1)
			end,
			"Go to harpoon file 1",
		},
		["gj"] = {
			function()
				require("harpoon.ui").nav_file(2)
			end,
			"Go to harpoon file 2",
		},
		["gk"] = {
			function()
				require("harpoon.ui").nav_file(3)
			end,
			"Go to harpoon file 3",
		},
		["gl"] = {
			function()
				require("harpoon.ui").nav_file(4)
			end,
			"Go to harpoon file 4",
		},
		["gm"] = {
			function()
				require("harpoon.ui").nav_file(5)
			end,
			"Go to harpoon file 5",
		},
		["gn"] = {
			function()
				require("harpoon.ui").nav_next()
			end,
			"Go to next harpoon file",
		},
		["gp"] = {
			function()
				require("harpoon.ui").nav_prev()
			end,
			"Go to previous harpoon file",
		},
		-- todo-comments
		["<leader>td"] = {
			"<cmd> TodoQuickFix <CR>",
			"Todo comments",
		},
	},
	x = {
		-- hop.nvim
		["s"] = {
			function()
				require("hop").hint_char2()
			end,
			"Jump to a combinaison of 2 keys",
		},
		["f"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following key inline",
		},
		["F"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding key inline",
		},
		["t"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
					hint_offset = -1,
				})
			end,
			"Jump to before a following key inline",
		},
		["T"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
					hint_offset = 1,
				})
			end,
			"Jump to after a preceding key inline",
		},
		["<leader>w"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word beginning inline",
		},
		["<leader>b"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word beginning inline",
		},
		["<leader>e"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word end inline",
		},
		["<leader>ge"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word end inline",
		},
		["<leader>j"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
				})
			end,
			"Jump to a following line",
		},
		["<leader>k"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
				})
			end,
			"Jump to a preceding line",
		},
	},
	o = {
		-- hop.nvim
		["s"] = {
			function()
				require("hop").hint_char2()
			end,
			"Jump to a combinaison of 2 keys",
		},
		["f"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following key inline",
		},
		["F"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding key inline",
		},
		["t"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
					hint_offset = -1,
				})
			end,
			"Jump to before a following key inline",
		},
		["T"] = {
			function()
				require("hop").hint_char1({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
					hint_offset = 1,
				})
			end,
			"Jump to after a preceding key inline",
		},
		["<leader>w"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word beginning inline",
		},
		["<leader>b"] = {
			function()
				require("hop").hint_words({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word beginning inline",
		},
		["<leader>e"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a following word end inline",
		},
		["<leader>ge"] = {
			function()
				require("hop").hint_words({
					hint_position = require("hop.hint").HintPosition.END,
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
					current_line_only = true,
				})
			end,
			"Jump to a preceding word end inline",
		},
		["<leader>j"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.AFTER_CURSOR,
				})
			end,
			"Jump to a following line",
		},
		["<leader>k"] = {
			function()
				require("hop").hint_lines({
					direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
				})
			end,
			"Jump to a preceding line",
		},
	},
	t = {
		-- terminal mode
		["<leader>x"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal terminal",
		},
	},
}

M.disabled = {
	n = {
		-- nvim-tree
		["<C-n>"] = "",
		-- telescope
		["<leader>cm"] = "",
		["<leader>fw"] = "",
		["<leader>gt"] = "",
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
