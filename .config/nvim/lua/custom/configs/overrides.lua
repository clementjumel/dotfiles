local cmp = require("cmp")

local M = {}

M.cmp = {
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.config.disable,
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<Tab>"] = cmp.config.disable,
		["<S-Tab>"] = cmp.config.disable,
	},
}

M.nvimtree = {
	filters = {
		custom = {
			"^.git$",
			"^.null-ls_",
		},
	},
}

M.oil = {
	default_file_explorer = false,
	keymaps = {
		["g?"] = "actions.show_help",
		["<CR>"] = "actions.select",
		["<C-v>"] = "actions.select_vsplit",
		["<C-s>"] = "actions.select_split",
		["<C-t>"] = "actions.select_tab",
		["<C-p>"] = "actions.preview",
		["q"] = "actions.close",
		["-"] = "actions.parent",
		["_"] = "actions.open_cwd",
		["H"] = "actions.toggle_hidden",
	},
	use_default_keymaps = false,
	view_options = {
		show_hidden = true,
		is_always_hidden = function(name, _)
			if name == ".git" then
				return true
			end
			if name == ".DS_Store" then
				return true
			end
		end,
	},
}

M.telescope = {
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--hidden",
		},
		file_ignore_patterns = {
			".git/",
		},
	},
}

M.todocomments = {
	search = {
		args = {
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--hidden",
		},
	},
}

M.hop = {
	keys = "hgjfkdlsmqyturieozpabvn",
	uppercase_labels = true,
}

M.mason = {
	ensure_installed = {
		"black",
		"mypy",
		"prettier",
		"pyright",
		"ruff",
		"stylua",
	},
}

return M
