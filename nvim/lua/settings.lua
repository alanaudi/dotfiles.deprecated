-- nvim api alias
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local exec = vim.api.nvim_exec

-- general
opt.colorcolumn = '80'                                                           -- highlight column
opt.cursorline = true                                                            -- highlight current line
opt.mouse = 'a'                                                                  -- enable mouse support
opt.number = true                                                                -- show line number
opt.termguicolors = true

-- cmd[[colorscheme catppuccino]]
