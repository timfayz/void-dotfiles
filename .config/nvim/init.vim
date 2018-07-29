" A brief help
"  :help cterm to list colors
" :help CTRL-? to recall shortcuts

filetype plugin on

" Raw paste mode
set paste "(off)

" Shortcuts
let mapleader=" "
"set notimeout

" Update config
nnoremap <LEADER>u :source ~/.config/nvim/init.vim<CR>

" Highlight brackets
set showmatch

" Show line numbers
set number
nnoremap <LEADER>r :set relativenumber!<CR>

" Tabs & spaces
set expandtab
set tabstop=4
set shiftwidth=4
set nojoinspaces

" Undo
set undofile
set undodir=~/.cache/nvim

" Swap
set dir=/tmp// " // trick to store fullpath

" Wrapping
set nowrap
set breakindent
set showbreak=↪
nnoremap <LEADER>w :set wrap!<CR>

" Vertical column
set textwidth=79 " 0
nnoremap <LEADER>c :let &colorcolumn = &cc == '' ? '80' : ''<CR>
highlight ColorColumn ctermbg=10

" Scroll experience
set scrolloff=3
set sidescrolloff=5
" save cursor column while moving
"set nostartofline

" Search & replace
set ignorecase
set smartcase
set gdefault
nnoremap <LEADER><SPACE>    :nohl <BAR> :w<CR>
nnoremap <LEADER>S          :%s//g<LEFT><LEFT>
nnoremap <silent><C-L>      :nohlsearch<CR><C-L>
vnoremap //                 y/<C-R>"<CR>N

" Auto formatting
set formatoptions+=o " insert comment on O/o

" More natural splits
set splitbelow " horizontal
set splitright " vertical

" Show trailing chars
highlight ExtraWhitespace ctermbg=darkgray
match ExtraWhitespace /\s\+$/
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" Recording
nnoremap Q @q

" Autocmd
autocmd BufWritePre * :%s/\s\+$//e

" Statusline
set showmode
set showcmd
" toggle statusline
set laststatus=2
nnoremap <silent><LEADER>B :let &laststatus = &ls == '' ? 2 : 0<CR>
" fit status line into ruler
set statusline=%f
highlight StatusLine ctermbg=7 ctermfg=8
highlight StatusLineNC ctermbg=7 ctermfg=10

" Vertical split (hide)
highlight VertSplit ctermbg=8 ctermfg=8
"set fillchars+=vert:\|

" Diff
" hi DiffAdd ctermbg=7 ctermfg=0
" hi DiffDelete ctermbg=red ctermfg=red

" Select all
nnoremap <C-A> magg<S-V>G
" Copy to clipboard
vnoremap <LEADER>y "+y

" TODO
" Plugins
"Plug 'chriskempson/base16-vim'
