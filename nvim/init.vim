call plug#begin('~/.config/nvim/plugged')
" tiny autocomplete
Plug 'ervandew/supertab'

" colorscheme
Plug 'yashguptaz/calvera-dark.nvim', {'as': 'calvera'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'joshdick/onedark.vim', {'as': 'onedark'}

" status line
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'

" comment
Plug 'numToStr/Comment.nvim'

call plug#end()

