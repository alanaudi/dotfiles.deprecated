local g = vim.g
local cmd = vim.cmd
-- -----------------------------------------------------------------------------
-- uwu
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme uwu]]

-- -----------------------------------------------------------------------------
-- night owl
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme night-owl]]

-- -----------------------------------------------------------------------------
-- vim-code-dark
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme codedark]]

-- -----------------------------------------------------------------------------
-- material
-- -----------------------------------------------------------------------------
-- g.material_style = 'darker'
-- cmd[[colorscheme material]]

-- -----------------------------------------------------------------------------
-- edge
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme edge]]

-- -----------------------------------------------------------------------------
-- onedark.vim
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme onedark]]

-- -----------------------------------------------------------------------------
-- onedarkpro
-- -----------------------------------------------------------------------------
-- require('onedarkpro').load()
-- cmd[[colorscheme onedarkpro]]

-- -----------------------------------------------------------------------------
-- onedark
-- -----------------------------------------------------------------------------
-- g.onedark_style = 'darker'
-- cmd[[colorscheme onedark]]

-- -----------------------------------------------------------------------------
-- zephyr
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme zephyr]]

-- -----------------------------------------------------------------------------
-- tokyonight
-- -----------------------------------------------------------------------------
-- cmd[[colorscheme tokyonight]]

-- -----------------------------------------------------------------------------
-- vscode
-- -----------------------------------------------------------------------------
-- g.vscode_style = 'dark'
-- cmd[[colorscheme vscode]]

-- -----------------------------------------------------------------------------
-- one dark pro
-- -----------------------------------------------------------------------------
-- require('onedarkpro').load()


-- -----------------------------------------------------------------------------
-- github-theme
-- -----------------------------------------------------------------------------
require('github-theme').setup{
  theme_style = 'dimmed',
  comment_style = 'italic',
  -- function_style = 'italic',
  keyword_style = 'italic',
  -- variable_style = 'italic',
  sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' },

  -- Change the 'hint' color to the 'orange' color, and make the 'error' color bright red
  colors = { hint = 'orange', error = '#ff0000' }
}


-- -----------------------------------------------------------------------------
-- catppuccino
-- -----------------------------------------------------------------------------
-- local catppuccino = require("catppuccino")
-- vim.cmd[[colorscheme dark_catppuccino]]

-- catppuccino.setup(
--     {
--   	colorscheme = "dark_catppuccino",
-- 		transparency = false,
-- 		term_colors = false,
-- 		styles = {
-- 			comments = "italic",
-- 			functions = "italic",
-- 			keywords = "italic",
-- 			strings = "NONE",
-- 			variables = "NONE",
-- 		},
-- 		integrations = {
-- 			treesitter = true,
-- 			native_lsp = {
-- 				enabled = true,
-- 				virtual_text = {
-- 					errors = "italic",
-- 					hints = "italic",
-- 					warnings = "italic",
-- 					information = "italic",
-- 				},
-- 				underlines = {
-- 					errors = "underline",
-- 					hints = "underline",
-- 					warnings = "underline",
-- 					information = "underline",
-- 				}
-- 			},
-- 			lsp_trouble = false,
-- 			lsp_saga = false,
-- 			gitgutter = false,
-- 			gitsigns = false,
-- 			telescope = false,
-- 			nvimtree = {
-- 				enabled = false,
-- 				show_root = false,
-- 			},
-- 			which_key = false,
-- 			indent_blankline = {
-- 				enabled = false,
-- 				colored_indent_levels = false,
-- 			},
-- 			dashboard = false,
-- 			neogit = false,
-- 			vim_sneak = false,
-- 			fern = false,
-- 			barbar = false,
-- 			bufferline = false,
-- 			markdown = false,
-- 			lightspeed = false,
-- 			ts_rainbow = false,
-- 			hop = false,
-- 		}
-- 	}
-- )


