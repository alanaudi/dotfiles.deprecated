-- machakann/vim-highlightedyank  ------------------------------------
local g = vim.g

g.highlightedyank_highlight_duration = 1000

vim.api.nvim_exec(
[[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END
]],
true)

-- dominikduda/vim_current_word  -------------------------------------
-- g.vim_current_word['highlight_twins'] = 1
-- g.vim_current_word['highlight_current_word'] = 1

vim.api.nvim_exec(
[[
  hi CurrentWordTwins guifg=#FFBC42 guibg=#23272D gui=bold,italic ctermfg=XXX ctermbg=XXX cterm=bold,italic
  "                          └┴┴┴┴┤        └┴┴┴┴┤     └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤         └┴┤         └┴┤       └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤
  "    gui-vim font color hex code│             │   gui-vim special styles│           │           │ console-vim special styles│
  "    ───────────────────────────┘             │   ──────────────────────┘           │           │ ──────────────────────────┘
  "            gui-vim background color hex code│     console-vim font term color code│           │
  "            ─────────────────────────────────┘     ────────────────────────────────┘           │
  "                                                         console-vim background term color code│
  "                                                         ──────────────────────────────────────┘
]],
true)

vim.api.nvim_exec(
[[
  hi CurrentWord guifg=#FFBC42 guibg=#23272D gui=underline,bold,italic ctermfg=XXX ctermbg=XXX cterm=underline,bold,italic
  "                     └┴┴┴┴┴──┐     └┴┴┴┴┤     └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤         └┴┤         └┴┤       └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤
  "  gui-vim font color hex code│          │   gui-vim special styles│           │           │ console-vim special styles│
  "  ───────────────────────────┘          │   ──────────────────────┘           │           │ ──────────────────────────┘
  "       gui-vim background color hex code│     console-vim font term color code│           │
  "       ─────────────────────────────────┘     ────────────────────────────────┘           │
  "                                                    console-vim background term color code│
  "                                                    ──────────────────────────────────────┘
]],
true)
