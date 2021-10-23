"-------------------------------------------------------------------------------
" Neovim 0.5.1
"
" author: alanaudi
" repo: https://github.com:alanaudi/dotfiles
" created_at: 20211023
" updated_at: 20211023
"-------------------------------------------------------------------------------


"-------------------------------------------------------------------------------
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"-------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" tiny autocomplete
Plug 'ervandew/supertab'

" colorscheme
Plug 'yashguptaz/calvera-dark.nvim', {'as': 'calvera'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'joshdick/onedark.vim', {'as': 'onedark'}
Plug 'projekt0n/github-nvim-theme'
Plug 'haishanh/night-owl.vim'

" status line
" Plug 'itchyny/lightline.vim'
" Plug 'windwp/windline.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'

" comment
Plug 'numToStr/Comment.nvim'

" cursor
Plug 'karb94/neoscroll.nvim'

" paren
Plug 'p00f/nvim-ts-rainbow'

" git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'

" others
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'editorconfig/editorconfig-vim'
Plug 'lewis6991/spaceless.nvim' " strip trailing whitespace while editing

call plug#end()
"===============================================================================


"-------------------------------------------------------------------------------
"                                  _
"   __ _  ___ _ __   ___ _ __ __ _| |
"  / _` |/ _ \ '_ \ / _ \ '__/ _` | |
" | (_| |  __/ | | |  __/ | | (_| | |
"  \__, |\___|_| |_|\___|_|  \__,_|_|
"  |___/
"
"-------------------------------------------------------------------------------
set number                                                                      " line number
set cursorline                                                                  " highlight current line
colorscheme night-owl                                                           " select colorscheme

" cursor
set guicursor=i:block-iCursor-blinkon0,v:block-vCursor

" git
set statusline+=%{get(b:,'gitsigns_status','')}
"===============================================================================


"-------------------------------------------------------------------------------
"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/
"
"-------------------------------------------------------------------------------
lua require('Comment').setup()
lua require('lualine').setup()
lua require('neoscroll').setup()
lua require('gitsigns').setup()
lua require('spaceless').setup()
"===============================================================================


"-------------------------------------------------------------------------------
"                                    _
"  _ __ ___   __ _ _ __  _   _  __ _| |
" | '_ ` _ \ / _` | '_ \| | | |/ _` | |
" | | | | | | (_| | | | | |_| | (_| | |
" |_| |_| |_|\__,_|_| |_|\__,_|\__,_|_|
"
"-------------------------------------------------------------------------------


"===============================================================================
