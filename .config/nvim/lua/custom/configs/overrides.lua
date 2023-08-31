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

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},
	renderer = {
		icons = {
			show = {
				git = true,
			},
		},
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

M.hop = {
	keys = "hgjfkdlsmqyturieozpabvn",
	uppercase_labels = true,
}

M.mason = {
	ensure_installed = {
		"black",
		"isort",
		"mypy",
		"prettier",
		"pyright",
		"ruff",
		"stylua",
	},
}

return M
