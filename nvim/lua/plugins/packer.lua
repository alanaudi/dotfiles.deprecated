local cmd = vim.cmd
local g = vim.g
-- -------------------------------------------------------------------
-- packer.nvim
-- -------------------------------------------------------------------
cmd [[packadd packer.nvim]]

-- add packages
return require'packer'.startup(function(use) -------------------------

  -- plugin manager: packer itself  ----------------------------------
  use { 'wbthomason/packer.nvim', opt = true }

  -- [
  --   Auto Completion  ---------------------------------------------------
  -- ]
  use 'ervandew/supertab'                                              -- standalone useful plugin

  -- [
  --   Colorscheme / Theme  ------------------------------------------
  -- ]
  use 'projekt0n/github-nvim-theme'
  -- use 'Pocco81/Catppuccino.nvim'
  -- use 'Mofiqul/vscode.nvim'
  -- use 'folke/tokyonight.nvim'ssdsds  -- use 'glepnir/zephyr-nvim'
  -- use 'navarasu/onedark.nvim'                                       -- NOTE: not suitable for hop
  -- use 'olimorris/onedarkpro.nvim'
  -- use 'joshdick/onedark.vim'
  -- use 'sainnhe/edge'                                                -- NOTE: Nice !!
  -- use 'marko-cerovac/material.nvim'                                 -- NOTE: Nice !!
  -- use 'tomasiser/vim-code-dark'                                     -- WARNING: Git sign issue
  -- use 'haishanh/night-owl.vim'                                      -- WARNING: Git sign issue
  -- use 'mangeshrex/uwu.vim'                                          -- WARNING: indentline issue

  -- [
  --   Editor  -------------------------------------------------------
  -- ]
  use 'unblevable/quick-scope'
  use 'AndrewRadev/splitjoin.vim'
  use 'andymass/vim-matchup'
  use 'Pocco81/AutoSave.nvim'                                          -- NOTE: automaticlallu save leaving insert mode
  use 'editorconfig/editorconfig-vim'                                  -- NOTE: .editorconfig
  use 'karb94/neoscroll.nvim'
  use 'xiyaowong/accelerated-jk.nvim'
  use 'AndrewRadev/tagalong.vim'
  use 'machakann/vim-highlightedyank'
  use 'kshenoy/vim-signature'
  use 'matze/vim-move'
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
  use 'github/copilot.vim'
  -- use 'p00f/nvim-ts-rainbow'                                        -- TODO: seems not working
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

  ----------------------------- TODO:
  use 'neovim/nvim-lspconfig'                                          -- collection of configurations for built-in LSP client
  -- use 'hrsh7th/cmp-cmdline'
  -- [
  --   FIX: Completion  ---------------------------------------------------
  -- ]
  -- use 'rafamadriz/friendly-snippets'
  -- use {
  --   'hrsh7th/nvim-cmp',
  --   after = 'friendly-snippets',
  --   config = function() require'completion'.setup() end
  -- }
  -- use {
  --   'L3MON4D3/LuaSnip',
  --   after = 'nvim-cmp',
  --   wants = 'friendly-snippets',
  --   config = function() require'completion'.luasnip() end
  -- }
  -- use {
  --   'saadparwaiz1/cmp_luasnip',                                        -- completion source for nvim-cmp
  --   after = 'LuaSnip'
  -- }
  -- use {
  --   'hrsh7th/cmp-nvim-lsp',
  --   after = 'cmp_luasnip',
  -- }
  -- use {
  --   'hrsh7th/cmp-buffer',
  --   after = 'cmp-nvim-lsp'
  -- }
  -- use {
  --   'hrsh7th/cmp-path',
  --   after = 'cmp-buffer',
  -- }

  -- [
  --   Syntax Highlight  ---------------------------------------------
  -- ]
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }         -- incremental parsing lib
  use 'nvim-treesitter/nvim-treesitter-textobjects'                    -- additional textobjexts for treesitter
  -- use 'singlexyz/treesitter-frontend-textobjects'                   -- TODO: how to use ??
  use 'cespare/vim-toml'                                               -- toml
  use 'joelbeedle/pseudo-syntax'
  use 'hjson/vim-hjson'
  use 'chemzqm/vim-jsx-improve'


  -- [
  --   Status Line  --------------------------------------------------
  -- ]
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- fzf
  use 'nvim-lua/popup.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-symbols.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }
  use 'nvim-telescope/telescope-media-files.nvim'                      -- WARN: Linux supported ONLY

  -- [
  --   UI / UX  ------------------------------------------------------
  -- ]
  -- use { 'RRethy/vim-hexokinase', run = 'make hexokinase' }          -- WARN: Golang required ...
  -- use 'glepnir/dashboard-nvim'
  -- use {
  --   'filipdutescu/renamer.nvim',                                    -- TODO: test needed
  --   branch = 'master',
  --   requires = { {'nvim-lua/plenary.nvim'} }
  -- }
  use 'DanilaMihailov/beacon.nvim'
  -- use 'edluffy/specs.nvim'                                          -- TODO: not work ???
  use 'norcalli/nvim-colorizer.lua'
  use 'dominikduda/vim_current_word'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here;
      -- see :h hop-config
      require'hop'.setup { keys = 'weruioasdfghjklxcvbnm' }
    end
  }
  -- animation focus
  use 'camspiers/animate.vim'
  use 'camspiers/lens.vim'

  -- [
  --   Debug  --------------------------------------------------------
  -- ]
  -- use 'puremourning/vimspector'

  -- [
  --   Statistic  ----------------------------------------------------
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
  -- use 'vimwiki/vimwiki'


  -- [
  --   To Be Continued  ----------------------------------------------
  -- ]

  -- WARN: not useful, what happened ???
  -- use {
  --   'gukz/ftFt.nvim',
  --   config = function()
  --     -- g.ftFT_disable_keymap_n = 1
  --     -- g.ftFT_disable_keymap_ydc = 1
  --     -- g.ftFT_disable_keymap_v = 1
  --     require'ftFT'.setup()
  --   end
  -- }

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
  -- use 'ggandor/lightspeed.nvim'
  -- use 'natecraddock/nvim-find'

  -- FIX: color issue !!
  -- org-mode
  -- use {
  --   'kristijanhusak/orgmode.nvim',
  --   config = function() require('orgmode').setup() end
  -- }

  -- use 'tzachar/cmp-fzy-buffer'
end) -----------------------------------------------------------------
