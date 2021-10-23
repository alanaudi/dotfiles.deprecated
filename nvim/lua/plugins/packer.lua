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
  use { 'ervandew/supertab' }

  -- colorscheme / theme
  use { 'haishanh/night-owl.vim' }

  -- config
  use { 'editorconfig/editorconfig-vim' }

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function() require'Comment'.setup() end
  }

  -- save
  use {
    'Pocco81/AutoSave.nvim',
    config = function() require'autosave' end
  }


  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    tag = 'release',                                                             -- use latest version
    config = function() require'gitsigns' end
  }

  -- syntax highlight
  use { 'cespare/vim-toml' }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require'treesitter' end
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'statusline' end
  }

  -- parent
  use {
    'windwp/nvim-autopairs',
    config = function() require'nvim-autopairs'.setup() end
  }

end) ---------------------------------------------------------------------------
