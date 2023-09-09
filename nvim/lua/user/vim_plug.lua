-- PLUGINS --
  local Plug = vim.fn['plug#']
  vim.call('plug#begin')
    -- PLugins
      Plug 'tpope/vim-commentary'
      Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
      Plug 'preservim/nerdtree'
      Plug 'm4xshen/autoclose.nvim'
    -- cusomize
      Plug 'ryanoasis/vim-devicons'
      Plug 'ap/vim-css-color'
    -- Themes
      --Plug 'rockerBOO/boo-colorscheme-nvim'
      -- Plug 'arcticicestudio/nord-vim'
      --Plug('baliestri/aura-theme', {['rtp'] = 'packages/neovim'})
      Plug('catppuccin/nvim', {['as'] = 'catppuccin' })
      -- Plug 'olivercederborg/poimandres.nvim'
    -- vim-airline
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      -- Plug 'edkolev/tmuxline.vim'
    -- Lsp
      Plug 'neovim/nvim-lspconfig'
      Plug 'williamboman/nvim-lsp-installer'
    -- nvim-cmp
      Plug 'hrsh7th/nvim-cmp'
      Plug 'hrsh7th/cmp-nvim-lsp'
      Plug 'hrsh7th/cmp-buffer'
      Plug 'hrsh7th/cmp-path'
      Plug 'hrsh7th/cmp-cmdline'
      Plug 'saadparwaiz1/cmp_luasnip'
      Plug 'L3MON4D3/LuaSnip'
  vim.call('plug#end')
