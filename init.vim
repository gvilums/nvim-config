if !exists('g:vscode')

call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-sensible'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'unblevable/quick-scope'

call plug#end()

lua << END
require('lualine').setup()
END

"colorscheme"
set background=dark

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

let g:palenight_terminal_italics=1

"nerdcommenter settings"
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1

"line numbers"
set number
set shiftwidth=4
set softtabstop=0
set tabstop=4

"; for fuzzy file search"
map ; :Files<CR>
map <C-;> :Files~<CR>

inoremap jk <ESC>

"turn on autosave by default
let g:auto_save = 1

endif
