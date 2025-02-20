local keymap = vim.keymap

-- Escape
keymap.set('i', 'jk', '<ESC>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- Copy to clipboard
keymap.set('v', '<C-C>', '"+y')

-- Visual Block
keymap.set('n', 'zv', '<C-v>')

-- Erase highlited words from /find
keymap.set('n', '<C-/>', '/9s8djfe<CR>')

-- Nerdtree
keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')

-- Prettier
-- keymap.set('n', '<Leader>f', ':Prettier<CR>')

-- Primeagen Maps
vim.g.mapleader = " "
keymap.set("n", "Q", "<nop>")

-- ' 'pv for netrw file explorer, add files w % and directories w d
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keep curser in center with <C-u> / <C-d>
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Move highlighted text with JK in V
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Set current file to executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Find and replace shortcuts
-- Wrap each line in '' and separate by , on one line
keymap.set('n', '<leader>,', ":%s/\\(.*\\)\\n/'\\1', /g<CR>I(<ESC>A<BS><BS>)<ESC>")
keymap.set('v', '<leader>,', ":s/\\(.*\\)\\n/'\\1', /g<CR>I(<ESC>A<BS><BS>)<ESC>")
-- Wrap line like ('Group', 'Word'), single LAST word
keymap.set('n', '<leader>l', [[:%s/\(.*\)\s\(.*\)/('\1','\2'),/g<CR>]])
keymap.set('v', '<leader>l', [[:s/\(.*\)\s\(.*\)/('\1','\2'),/g<CR>]])
-- Wrap line like ('Word', 'Group'), single FIRST word
keymap.set('n', '<leader>f', [[:%s/\(\a*\).\(.*\)/('\1','\2'),/g<CR>]])
keymap.set('v', '<leader>f', [[:s/\(\a*\).\(.*\)/('\1','\2'),/g<CR>]])
-- Wrap line like ('Group', 'Group'), on each side of TAB
keymap.set('n', '<leader>t', [[:%s/\(.*\)\t\(.*\)/('\1','\2'),/g<CR>]])
keymap.set('v', '<leader>t', [[:s/\(.*\)\t\(.*\)/('\1','\2'),/g<CR>]])

-- Reverse
keymap.set('n', '<leader>/', ":%s/ /\\r/g<CR>:%s/'\\(.*\\)',/\\1/g<CR>")

-- Remove blank lines
keymap.set('n', '<leader><leader>', ":%s/^$\\n//g<CR>:%s/\\n^$//g<CR>")

-- Delete all text and enter insert mode
keymap.set({ 'n', 'v' }, '<leader><BS>', "<ESC>gg<S-v>Gc")

-- Menu to replace current word
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
