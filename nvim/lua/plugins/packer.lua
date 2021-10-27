local cmd = vim.cmd
-- -------------------------------------------------------------------
-- packer.nvim
-- -------------------------------------------------------------------
cmd [[packadd packer.nvim]]

-- add packages
return require'packer'.startup(function(use) -------------------------

  -- plugin manager: packer itself  ----------------------------------
  use { 'wbthomason/packer.nvim', opt = true }

  -- [
  --   Completion  ---------------------------------------------------
  -- ]
  use 'ervandew/supertab'

  -- [
  --   Colorscheme / Theme  ------------------------------------------
  -- ]
  -- use 'Pocco81/Catppuccino.nvim'
  use 'projekt0n/github-nvim-theme'


  -- [
  --   Editor  -------------------------------------------------------
  -- ]
  use 'Pocco81/AutoSave.nvim'                                          -- NOTE: automaticlallu save leaving insert mode
  use 'editorconfig/editorconfig-vim'                                  -- NOTE: .editorconfig
  use 'karb94/neoscroll.nvim'
  use 'xiyaowong/accelerated-jk.nvim'
  use 'AndrewRadev/tagalong.vim'
  use {
    'windwp/nvim-autopairs',
    config = function() require'nvim-autopairs'.setup() end
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
      end
  }
  use 'p00f/nvim-ts-rainbow'                                           -- TODO: seems not working
  use {
    'windwp/nvim-ts-autotag',
    config = function() require'nvim-ts-autotag'.setup() end
  }

  -- [
  --   Comment  ------------------------------------------------------
  -- ]
  use {
    'numToStr/Comment.nvim',
    config = function() require'Comment'.setup() end
  }

  -- [
  --   Git  ----------------------------------------------------------
  -- ]
  use {
    'lewis6991/gitsigns.nvim',                                         -- NOTE: Show sign on the left bar
    requires = { 'nvim-lua/plenary.nvim' },
    tag = 'release'                                                    -- use latest version
  }
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
    -- config = function() require'neogit'.setup() end
  }

  -- [
  --   Syntax Highlight  ---------------------------------------------
  -- ]
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- use 'nvim-treesitter/nvim-treesitter-textobjects'
  -- use 'singlexyz/treesitter-frontend-textobjects'                   -- TODO: how to use ??
  use 'cespare/vim-toml'                                               -- toml
  use 'joelbeedle/pseudo-syntax'
  use 'hjson/vim-hjson'

  -- [
  --   Status Line  --------------------------------------------------
  -- ]
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- fzf
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- [
  --   UI / UX  --------------------------------------------------
  -- ]
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'weruioasdfghjklxcvbnm' }
    end
  }
  -- animation focus
  use 'camspiers/animate.vim'
  use 'camspiers/lens.vim'

  -- [
  --   Statistic  --------------------------------------------------
  -- ]
  use 'dstein64/vim-startuptime'

  -- [
  --   Integration  --------------------------------------------------
  -- ]
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }

  -- [
  --   Note Taking  --------------------------------------------------
  -- ]
  use 'vimwiki/vimwiki'


  -- [
  --   To Be Continued  --------------------------------------------------
  -- ]
  -- tabout
  -- use 'abecodes/tabout.nvim'

  -- tabs
  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = { 'kyazdani42/nvim-web-devicons' }
  -- }

  -- markdown preview
  -- use 'ellisonleao/glow.nvim'

  -- file search
  -- use 'Shougo/denite.nvim'

  -- org-mode
  use {
    'kristijanhusak/orgmode.nvim',
    config = function() require('orgmode').setup() end
  }

end) ---------------------------------------------------------------------------
