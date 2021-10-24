local cmd = vim.cmd
-- -----------------------------------------------------------------------------
-- packer.nvim
-- -----------------------------------------------------------------------------
cmd [[packadd packer.nvim]]

-- add packages
return require'packer'.startup(function(use) -----------------------------------

  -- packer itself
  use { 'wbthomason/packer.nvim', opt = true }

  -- autocomplete
  use 'ervandew/supertab'

  -- colorscheme / theme
  -- use 'Pocco81/Catppuccino.nvim'
  use 'projekt0n/github-nvim-theme'

  -- config
  use 'editorconfig/editorconfig-vim'

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function() require'Comment'.setup() end
  }

  -- save
  use 'Pocco81/AutoSave.nvim'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    tag = 'release'
  }

  -- syntax highlight
  use 'cespare/vim-toml'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- parent
  use {
    'windwp/nvim-autopairs',
    config = function() require'nvim-autopairs'.setup() end
  }

  -- scroll
  use 'karb94/neoscroll.nvim'

  -- fzf
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- jk
  use 'xiyaowong/accelerated-jk.nvim'

  -- color
  use 'norcalli/nvim-colorizer.lua'

  -- tabout
  use 'abecodes/tabout.nvim'

  -- tabs
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- faster
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'weruioasdfghjklxcvbnm' }
    end
  }

  -- indent
  use 'lukas-reineke/indent-blankline.nvim'

  -- startup time
  use 'dstein64/vim-startuptime'

  -- animation focus
  use 'camspiers/animate.vim'
  use 'camspiers/lens.vim'

  -- pseudo code
  use 'joelbeedle/pseudo-syntax'

  -- git
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
    -- config = function() require'neogit'.setup() end
  }

end) ---------------------------------------------------------------------------
