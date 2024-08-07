-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

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
    use "echasnovski/mini.icons"
    use 'nvim-tree/nvim-web-devicons'

    use "folke/tokyonight.nvim"
    use 'sainnhe/sonokai'
    use "rebelot/kanagawa.nvim"

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    --for shoing icons
    use 'ryanoasis/vim-devicons'

    --for tag bar
    use 'https://github.com/preservim/tagbar'

    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

    --for comment
    use 'https://github.com/tpope/vim-commentary'

    --for auto genrate
    -- use 'neoclide/coc.nvim'

    use 'ThePrimeagen/vim-be-good'

    -- terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'mbbill/undotree'

    -- github
    use 'tpope/vim-fugitive'
    use 'junegunn/gv.vim'

    --Blankline
    use 'lukas-reineke/indent-blankline.nvim'

    --autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --lsp
    use "neovim/nvim-lspconfig"

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    --for show list error message
    use 'folke/trouble.nvim'

    --To relax coding
    use 'folke/zen-mode.nvim'
    use 'folke/twilight.nvim'

    --to debug
    use 'mfussenegger/nvim-dap'

    --to move tab
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

    --to notif
    use 'folke/noice.nvim'
    use 'rcarriga/nvim-notify'
    use 'MunifTanjim/nui.nvim'
end)
