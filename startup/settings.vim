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
set path+=**
if &diff
	set wrap
endif
set diffopt+=iwhite
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
set tabstop=2
set shiftwidth=2
set foldcolumn=1
set cc=+1,+2
set showtabline=2

set linespace=0
set history=1000

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

let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1
let g:gitgutter_sign_modified = '≈ '
let g:gitgutter_sign_removed = '⌐ '


let g:OmniSharp_server_use_mono = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_cs_checkers = ['mcs']
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|npm-packages-offline-cache'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" let g:syntastic_typescript_checkers = ['tslint']
" let g:syntastic_ts_checkers = ['tslint']
" let g:syntastic_javascript_checkers = ['eslint']

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

au BufNewFile,BufRead *.xaml        setf xml

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['tsserver', 'tslint'],
      \   'vue': ['eslint']
      \}

let g:ale_fixers = {
      \    'javascript': ['eslint'],
      \    'typescript': ['prettier'],
      \    'vue': ['eslint'],
      \    'scss': ['prettier'],
      \    'html': ['prettier']
      \}
let g:ale_fix_on_save = 1

" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
