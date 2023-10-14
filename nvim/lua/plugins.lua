local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- superior code highlighting
    use { 'B4mbus/oxocarbon-lua.nvim' } -- theme
    use { 'projekt0n/github-nvim-theme' } -- theme
    use 'Yazeed1s/oh-lucy.nvim' -- theme
    use 'kyazdani42/nvim-web-devicons' -- icons
    use 'norcalli/nvim-colorizer.lua' -- add color to hex values
    use 'lukas-reineke/indent-blankline.nvim' -- vertical indent lines
    use 'goolord/alpha-nvim' -- greeter/start up screen
    use 'onsails/lspkind-nvim' -- pictograms to builtin lsp
    use { 'akinsho/bufferline.nvim', tag = '*', requires = 'nvim-tree/nvim-web-devicons' } -- tabline
    use 'beauwilliams/focus.nvim' -- window splitter

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim' -- lsp installation helper
    use 'williamboman/mason-lspconfig.nvim' -- lsp installation helper

    -- code completion engine
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- file finder, file explorer, file stuff
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'

    -- functionality
    use { 'akinsho/toggleterm.nvim', tag = 'v2.*' } -- toggle nvim terminal
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs' -- autopair completion
    use 'nvim-lualine/lualine.nvim'
    use 'folke/zen-mode.nvim' -- zen mode
    use 'lewis6991/gitsigns.nvim' -- git stuff
    use 'ahmedkhalf/project.nvim'
end)
