"============== General Settings ===============
set dict=/usr/share/dict/words
set cursorline
set showcmd
set ruler
set incsearch
set wildmenu
set syntax=enable
set noshowmode
set autoread
set encoding=utf-8
set synmaxcol=0
set nojoinspaces
set term=screen-256color
set display=uhex
set shortmess=aAIsT
set cmdheight=2
set nowrap
if &diff
	set wrap
endif
set diffopt+=iwhite
let &scrolloff=999-&scrolloff
set smartcase
set relativenumber
set nowritebackup

set completeopt=menu
set mousemodel=popup
set backspace=2
set number
set nocompatible
set complete=.,w,b,u,t,i,kspell

" Hack to make sql in php hilighting suck less
let sql_type_default = 'sqlanywhere'

set enc=utf-8
set fillchars=vert:¦

set expandtab
set tabstop=4
set shiftwidth=4
set foldcolumn=1
set cc=+1,+2
set showtabline=2

set linespace=0
set history=1000
set list listchars=tab:▸ ,trail:•,extends:❯,precedes:❮

set laststatus=2
set mouse=a
set vb
set ttym=xterm2
set ffs=unix,dos
set ff=unix

set wrap

set notimeout
set ttimeout
set ttimeoutlen=100

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have :s///g flag by default on

if version > 720
	set undofile
	set undodir=~/vimundo/
endif

let mapleader='\'
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1

let g:phpcomplete_parse_docblock_comments = 1

let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1
"
let g:gitgutter_sign_modified = '≈ '
let g:gitgutter_sign_removed = '⌐ '

