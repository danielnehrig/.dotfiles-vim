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

set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1

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
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
autocmd FileType cs let g:ale_c_uncrustify_options = '-l CS'

let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['tsserver', 'tslint'],
      \   'cs': ['csc'],
      \   'vue': ['eslint']
      \}

let g:ale_fixers = {
      \    'javascript': ['eslint'],
      \    'typescript': ['prettier'],
      \    'vue': ['eslint'],
      \    'cs': ['uncrustify'],
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

set signcolumn=yes
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

let g:ycm_auto_trigger = 1
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{2}', 're!:\s+' ],
    \   'scss': [ 're!\s{2}', 're!:\s+' ],
    \   'javascript': [ '.', ':', '/', "'", '"', 'from', "re!import .* from '"],
    \   'sass': [ 're!\s{2}', 're!:\s+' ],
    \ }

let g:ycm_filetype_blacklist = { 'yaml': 1, 'yml': 1, 'lua': 1, 'json': 1, 'vim': 1, 'java': 1, 'groovy': 1  }
autocmd BufNew,BufEnter * execute "silent! CocDisable"
autocmd BufNew,BufEnter *.yaml,*.json,*.yaml,*.yml,*.lua,*.java,*.groovy execute "silent! CocEnable"
autocmd BufLeave *.yaml,*.yml,*.json,*.vim,*.lua,*.java,*.groovy execute "silent! CocDisable"


let g:nodejs_complete_config = {
            \  'js_compl_fn': 'jscomplete#CompleteJS',
            \  'max_node_compl_len': 15
            \}

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
let g:Powerline_symbols="fancy"
" let g:ycm_show_diagnostics_ui = 0

" set tags=./tags;,tags;
" set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
" let g:syntastic_typescript_checkers = ['tslint']
" let g:syntastic_ts_checkers = ['tslint']
" let g:syntastic_javascript_checkers = ['eslint']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_log_level='debug'
let g:templates_directory = ['~/.vim/templates']
let g:ale_cs_csc_assembly_path = ['/Users/dnehrig/.nuget/packages/',
      \ '/usr/local/share/dotnet/sdk/NuGetFallbackFolder/']

let g:startify_session_persistence = 1
let g:startify_lists = [
      \ { 'type': 'dir',       'header': ['   Recent files']  },
      \ { 'type': 'sessions',  'header': ['   Saved sessions']  },
      \ ]

let g:startify_custom_header = [
      \ "  ",
      \ '                  .o+`                   ',
      \ '                 `ooo/                   ',
      \ '                `+oooo:                  ',
      \ '               `+oooooo:                 ',
      \ '               -+oooooo+:                ',
      \ '             `/:-:++oooo+:               ',
      \ '            `/++++/+++++++:              ',
      \ '           `/++++++++++++++:             ',
      \ '          `/+++moooooooooooo`            ',
      \ '          mooosssso++osssssso`           ',
      \ '        .oossssso-````/ossssss+`         ',
      \ '       -osssssso.      :ssssssso.        ',
      \ '      :osssssss/        osssso+++.       ',
      \ '     /ossssssss/        +ssssooo/-       ',
      \ '   `/ossssso+/:-        -:/+osssso+-     ',
      \ '  `+sso+:-`                 `.-/+oso:    ',
      \ ' `++:.                           `-/+/   ',
      \ ' .`                                 `/   ',
      \ '   ',
      \ ]
