local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"javascript",
		"tsx",
		"typescript",
		"json",
		"css",
		"html",
		"sql",
		"c",
		"vim",
		"help",
		"query",
		"lua"
	},
	autotag = {
		enable = true,
	}
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
