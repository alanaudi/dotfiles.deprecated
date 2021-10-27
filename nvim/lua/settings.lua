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
o.colorcolumn = '80'                                                             -- highlight column
o.cursorline = true                                                              -- highlight current line
o.mouse = 'a'                                                                    -- enable mouse support
o.number = true                                                                  -- show line number
o.termguicolors = true
o.smartindent = true
o.ignorecase = true                                                              -- ignores acse when searching
o.smartcase = true
o.wrap = false                                                                   -- set nowrap

-- live completion
o.inccommand = 'nosplit'                                                         -- incremental search

-- search
o.hlsearch = true
o.incsearch = true

g.mapleader = ' '

map('n', '<leader>f.', ':e $MYVIMRC<CR>')
map('n', '<leader>f,', ':e $HOME/.config/nvim/lua/settings.lua<CR>')
