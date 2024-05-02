" Configuration file for vim set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"This package is for support for the colemak keyboard
Plugin 'beardedfoo/vim-colemak'

"This package is for support for matching brackets
Plugin 'jiangmiao/auto-pairs'

"Those packages are color themes
Plugin 'gruvbox-community/gruvbox'
Plugin 'wojciechkepka/vim-github-dark'
Plugin 'sainnhe/gruvbox-material'

"This package is to add a start screen
Plugin 'mhinz/vim-startify'

"This package creates a nice status bar at the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"This package is for error detection
"Plugin 'dense-analysis/ale'

"This package disables search highlights after usage
Plugin 'romainl/vim-cool'

"This package enables the undo tree (use <F5>)
Plugin 'simnalamburt/vim-mundo'

"This package is to have a distraction free mode (use <C-k>)
Plugin 'junegunn/goyo.vim'

"This package allows to search easily for files (use o)
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

"This package is for git integration (use :Git)
Plugin 'tpope/vim-fugitive'

"This one is kinda similar (use :GV)
Plugin 'junegunn/gv.vim'

"This package modifies surrounds like quotes (use cs)
Plugin 'tpope/vim-surround'

"This package shows git diff in the current file
Plugin 'airblade/vim-gitgutter'

"This package is an ouline viewer (use <F8>)
Plugin 'majutsushi/tagbar'

"This package is here for autocompletion
Plugin 'valloric/youcompleteme'

"This package offers support for the rust programming language
Plugin 'rust-lang/rust.vim'

"This package enables auto-save (works automatically)
Plugin '907th/vim-auto-save'

"This package allows me to comment lines easily (use \cc ou \c<space>)
Plugin 'scrooloose/nerdcommenter'

"This package shows the battery of the computer
Plugin 'lambdalisue/battery.vim'

"This package is to have better comments
Plugin 'jbgutierrez/vim-better-comments'

"This package is to show the time in the status bar
Plugin 'enricobacis/vim-airline-clock'

call vundle#end()
filetype plugin indent on
filetype plugin on

let skip_defaults_vim=1

syntax on

"set background=dark

set number

set showcmd

set ignorecase

filetype indent on

"set cursorline
"set cursorcolumn

set shiftwidth=4
set tabstop=4
set expandtab
set nobackup

set nowrap

set incsearch
set smartcase
set hlsearch

" colorscheme gruvbox
colorscheme gruvbox-material

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo
"This remaps the F5 key to open the undo tree
nnoremap <F5> :MundoToggle<CR>
let g:mundo_width = 60
let g:mundo_preview_height = 40
let g:mundo_right = 1

nnoremap <C-k> :Goyo<CR>

map o :Files<CR>

"set updatetime=100

nnoremap <F8> :TagbarToggle<CR>
autocmd VimEnter * nested :TagbarOpen

let g:auto_save = 1

" Create default mappings for the comments
let g:NERDCreateDefaultMappings = 1

set completeopt-=preview
set completeopt+=popup
let g:ycm_auto_hover = ''

let g:ale_sign_column_always = 0

"This is to remap the escape key
inoremap tt <esc>
vnoremap ne <esc>
"set timeoutlen=500

"let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ycm#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap yf <Plug>(YCMFindSymbolInDocument)

:set signcolumn=yes

let g:startify_bookmarks = [ {'c': '~/.vimrc'} ]

:set wrap
