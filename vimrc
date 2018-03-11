" set the colorscheme with background color as the terminal background color
" instead of the theme background color
"set t_Co=256

"let g:PaperColor_Theme_Options = {
"  \   'theme': {
"  \     'default': {
"  \       'transparent_background': 1
"  \     }
"  \   }
"  \ }
"
"set background=dark
"colorscheme PaperColor

" load pathogen bundles
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"set termguicolors
set background=dark
colorscheme gruvbox

" load files from $HOME/.vim/ftplugin
filetype plugin indent on
syntax on

" Always show the status line even if only one file is open
set laststatus=2

" Custom status line format
"set statusline=%f\ %m\ %r\ %y\%=Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set statusline=%f\ %m\ %r\ %y\%=Line:%l/%L\ [%p%%]\ Col:%v\ Buf:#%n

" miscellaneous
set mouse=a
set hidden
set smartcase
set nobackup
set writebackup
map Q gq
set laststatus=2
set nowrap
set history=1000
set wildmode=longest,full
set wildmenu
set wildignore=*~
set title
set hlsearch

" Catch trailing whitespace with \w
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>w :set nolist!<CR>
