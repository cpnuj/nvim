return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'williamboman/mason.nvim'   
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'


    use 'mfussenegger/nvim-dap'

    use { "bluz71/vim-moonfly-colors", as = "moonfly" }

    -- Telescope used to fuzzy search files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use {
        'mrcjkb/haskell-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim', -- optional
        },
        branch = '1.x.x', -- recommended
    }
end)
