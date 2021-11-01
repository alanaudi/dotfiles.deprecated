-- nvim api alias
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local o = vim.opt
local exec = vim.api.nvim_exec
local api = vim.api

-- utils
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- general
o.colorcolumn = '80'                                                   -- highlight column
o.cursorline = true                                                    -- highlight current line
o.mouse = 'a'                                                          -- enable mouse support
o.relativenumber = true                                                -- show line number
o.number = true                                                        -- show line number
o.termguicolors = true
o.smartindent = true
o.ignorecase = true                                                    -- ignores acse when searching
o.smartcase = true
o.wrap = false                                                         -- set nowrap

-- live completion
o.inccommand = 'nosplit'                                               -- incremental search

-- search
o.hlsearch = true
o.incsearch = true

g.mapleader = ' '

map('n', '<leader>f.', ':e $MYVIMRC<CR>')
map('n', '<leader>f,', ':e $HOME/.config/nvim/lua/settings.lua<CR>')
map('n', '<leader>fp', ':e $HOME/.config/nvim/lua/plugins/packer.lua<CR>')
map('n', '<leader>fP', ':e $HOME/.config/nvim/lua/plugins/packer.lua<CR>')
map('n', '<leader>fn', '<cmd>Telescope file_browser<CR>')
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
map('n', '<leader>fm', '<cmd>Telescope media_files<CR>')
map('n', 'gj', '<cmd>SplitjoinJoin<CR>')
map('n', 'gl', '<cmd>SplitjoinSplit<CR>')
map('n', '<leader>gg', '<cmd>Neogit<CR>')

