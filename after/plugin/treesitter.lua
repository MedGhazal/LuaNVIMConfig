require'nvim-treesitter.configs'.setup {
	ensure_installed = {"html", "css", "python", "c", "lua", "vim", "rust"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<c-space>',
			node_incremental = '<c-space>',
			node_decremental = '<c-backspace>',
		},
	},
}
