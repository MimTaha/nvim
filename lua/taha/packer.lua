-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'preservim/nerdtree'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	use( "folke/tokyonight.nvim" , {run = ':colorscheme tokyonight'})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	--for shoing icons
	use 'ryanoasis/vim-devicons'
	
	--for tag bar
	use 'https://github.com/preservim/tagbar'

	--for tab line
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'

	--for comment
	use 'https://github.com/tpope/vim-commentary'

	--for auto genrate
    use 'neoclide/coc.nvim'

    use 'ThePrimeagen/vim-be-good'

    -- terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'mbbill/undotree'

    -- github
    use 'tpope/vim-fugitive'
    use 'junegunn/gv.vim'
end)
