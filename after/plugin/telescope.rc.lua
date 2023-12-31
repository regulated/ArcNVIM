local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close
			},
		},
	},
}

-- keymaps
vim.keymap.set('n', '\\f',
	function()
		builtin.find_files({
			no_ignore = false,
			hidden = true
		})
	end)
vim.keymap.set('n', '\\s', function()
	builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
	builtin.buffers()
end)
vim.keymap.set('n', '\\t', function()
	builtin.help_tags()
end)
vim.keymap.set('n', '\\r', function()
	builtin.resume()
end)
vim.keymap.set('n', '\\e', function()
	builtin.diagnostics()
end)

-- primeagen mappings
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
