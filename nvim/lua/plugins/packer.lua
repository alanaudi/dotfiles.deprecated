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
    config = function()
      require'Comment'.setup()
    end
  }

  -- save
  use {
    'Pocco81/AutoSave.nvim',
    config = function()
      require'autosave'.setup(
        {
          enabled = true,
          execution_message =
            "AutoSave: saved at "..vim.fn.strftime("%H:%M:%S"),
          events = { "InsertLeave", "TextChanged" },
          conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
          },
          write_all_buffers = false,
          on_off_commands = true,
          clean_command_line_interval = 0,
          debounce_delay = 135
        }
      )
    end
  }


  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    tag = 'release',                                                             -- use latest version
    config = function()
      require'gitsigns'.setup({
        signs = {
          add = {
            hl = 'GitSignsAdd',
            text = '▌',
            numhl='GitSignsAddNr',
            linehl='GitSignsAddLn'
          },
          change = {
            hl = 'GitSignsChange',
            text = '▌',
            numhl='GitSignsChangeNr',
            linehl='GitSignsChangeLn'
          },
          delete = {
            hl = 'GitSignsDelete',
            text = '▌',
            numhl='GitSignsDeleteNr',
            linehl='GitSignsDeleteLn'
          },
          topdelete    = {
            hl = 'GitSignsDelete',
            text = '▌',
            numhl='GitSignsDeleteNr',
            linehl='GitSignsDeleteLn'
          },
          changedelete = {
            hl = 'GitSignsChange',
            text = '▌',
            numhl='GitSignsChangeNr',
            linehl='GitSignsChangeLn'
          }
        }
      })
    end
  }

  -- syntax highlight
  use { 'cespare/vim-toml' }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require'lualine'.setup(
        {
          options = {
            theme = 'onedark',
            component_separators = '',
            section_separators = '',
            disabled_filetypes = {}
          }
        }
      )
    end
  }

end) ---------------------------------------------------------------------------
