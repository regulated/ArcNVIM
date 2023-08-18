local keymap = vim.keymap

-- Escape
keymap.set('i', 'jk', '<ESC>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- Copy to clipboard
keymap.set('v', '<C-C>', '"+y')

-- Erase highlited words from /find
keymap.set('n', '<C-/>', '/9s8djfe<CR>')

-- Nerdtree
keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')

-- Prettier
-- keymap.set('n', '<Leader>f', ':Prettier<CR>')

-- Primeagen Maps
vim.g.mapleader = " " 
keymap.set("n", "Q", "<nop>")

-- Keep curser in center with <C-u> / <C-d>
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Move highlighted text with JK in V
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Find and replace shortcuts to change multiline list to one line csv '', and to reverse csv
keymap.set('n', '<leader>,', ":%s/\\(.*\\)\\n/'\\1', /g<CR>")
keymap.set('n', '<leader>/', ":%s/ /\\r/g<CR>:%s/'\\(.*\\)',/\\1/g<CR>")
-- Remove blank lines
keymap.set('n', '<leader><leader>', ":%s/^$\\n//g<CR>")
