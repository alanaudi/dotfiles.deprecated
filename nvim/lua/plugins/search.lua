require'telescope'.setup{
  defaults = {
    prompt_prefix = '$ ',
    selection_caret = '➤ ',
  },
}

require'telescope'.load_extension('fzf')

require("highlight_current_n").setup({
  highlight_group = "IncSearch" -- highlight group name to use for highlight
})

vim.api.nvim_set_keymap('n', 'n', "<cmd>lua require'highlight_current_n'.n()<cr>", {})
vim.api.nvim_set_keymap('n', 'N', "<cmd>lua require'highlight_current_n'.N()<cr>", {})
vim.api.nvim_exec(
[[
  augroup ClearSearchHL
    autocmd!
    " You may only want to see hlsearch /while/ searching, you can automatically
    " toggle hlsearch with the following autocommands
    autocmd CmdlineEnter /,\? set hlsearch
    autocmd CmdlineLeave /,\? set nohlsearch
    " this will apply similar n|N highlighting to the first search result
    " careful with escaping ? in lua, you may need \\?
    autocmd CmdlineLeave /,\? lua require('highlight_current_n')['/,?']()
  augroup END
]],
true)
-- require'telescope.builtin'.symbols{ sources = { 'emoji', 'gitmoji'}}


-- require('telescope').setup{
--   defaults = {
--     -- preview_cutoff = 1,
--     -- previewer = true,
--     -- file_previewer = require('telescope.previewers').vim_buffer_cat.new,
--     -- Default configuration for telescope goes here:
--     -- config_key = value,
--     mappings = {
--       i = {
--         -- map actions.which_key to <C-h> (default: <C-/>)
--         -- actions.which_key shows the mappings for your picker,
--         -- e.g. git_{create, delete, ...}_branch for the git_branches picker
--         ["<C-h>"] = "which_key"
--       }
--     }
--   },
--   pickers = {
--     -- Default configuration for builtin pickers goes here:
--     -- picker_name = {
--     --   picker_config_key = value,
--     --   ...
--     -- }
--     -- Now the picker_config_key will be applied every time you call this
--     -- builtin picker
--   },
--   extensions = {
--     -- Your extension configuration goes here:
--     -- extension_name = {
--     --   extension_config_key = value,
--     -- }
--     -- please take a look at the readme of the extension you want to configure
--   }
-- }

-- require('telescope').load_extension("media_files")

-- require('telescope').setup {
--   extensions = {
--     media_files = {
--       filetypes = {'png', 'webp', 'jpg', 'jpeg'},
--       find_cmd = 'rg'
--     }
--   }
-- }



-- local cfg = require("nvim-find.config")
--
-- cfg.height = 14 -- set max height
