-- -----------------------------------------------------------------------------
--  Neovim 0.5.1
--
--  author: alanaudi
--  repo: https://github.com:alanaudi/dotfiles
--  branch: dev
--  created_at: 20211023
--  updated_at: 20211023
-- -----------------------------------------------------------------------------

local fn = vim.fn
local execute = vim.api.nvim_command

-- -----------------------------------------------------------------------------
--                     _                        _
--    _ __   __ _  ___| | _____ _ __ _ ____   _(_)_ __ ___
--   | '_ \ / _` |/ __| |/ / _ \ '__| '_ \ \ / / | '_ ` _ \
--   | |_) | (_| | (__|   <  __/ |_ | | | \ V /| | | | | | |
--   | .__/ \__,_|\___|_|\_\___|_(_)|_| |_|\_/ |_|_| |_| |_|
--   |_|
--
-- -----------------------------------------------------------------------------

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
-- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd BufWritePost packer.lua PackerCompile'


-- -----------------------------------------------------------------------------
--                       _       _
--   _ __ ___   ___   __| |_   _| | ___
--  | '_ ` _ \ / _ \ / _` | | | | |/ _ \
--  | | | | | | (_) | (_| | |_| | |  __/
--  |_| |_| |_|\___/ \__,_|\__,_|_|\___|
--
-- -----------------------------------------------------------------------------
local modules = {
  'settings',
  'plugins/packer',
  'plugins/lualine',
}

for i = 1, #modules, 1 do
  pcall(require, modules[i])
end
