local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

	-- nerdtree
	use 'preservim/nerdtree'
	use 'ryanoasis/vim-devicons'

	-- Colorschemes
	use { "catppuccin/nvim", as = "catppuccin" }
  use { 'ellisonleao/gruvbox.nvim' }
	use { 'Rigellute/shades-of-purple.vim', as = "purple" }
	use { 'folke/tokyonight.nvim' }
	use { 'ray-x/aurora' }
	use { 'ray-x/starry.nvim', setup = function()
			vim.g.starry_italic_comments = true
			vim.g.starry_italic_string = true
	end}
	use { 'lunarvim/synthwave84.nvim' }

	use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
	'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	use 'kyazdani42/nvim-web-devicons' -- File icons

	use 'neovim/nvim-lspconfig'
	-- lsp features
	use 'onsails/lspkind-nvim'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'glepnir/lspsaga.nvim'

	-- prettier
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'

	-- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
	use 'nvim-lua/plenary.nvim'

	-- autoclose
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

	use 'norcalli/nvim-colorizer.lua'

	-- undotree
	use 'mbbill/undotree'

	-- comments
	use 'tpope/vim-commentary'

	-- sync hjkl motions with tmux
	use { 'alexghergh/nvim-tmux-navigation', config = function()
        require'nvim-tmux-navigation'.setup {
            disable_when_zoomed = true, -- defaults to false
            keybindings = {
                left = "<C-h>",
                down = "<C-j>",
                up = "<C-k>",
                right = "<C-l>",
                last_active = "<C-\\>",
                next = "<C-Space>",
            }
        }
    end
	}

end)
