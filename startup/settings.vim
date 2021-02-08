" "============== General Settings ===============
set dict=/usr/share/dict/words
set cursorline
set showcmd
if !has('nvim')
  set ttymouse=xterm2
endif
set ruler
set incsearch
set wildmenu
set syntax=enable
set noshowmode
set autoread
set encoding=utf-8
set synmaxcol=0
set nojoinspaces
if !has('nvim')
  set term=screen-256color
endif
set display=uhex
set shortmess=a
set cmdheight=2
set nowrap
set path+=**
if &diff
  set wrap
endif
set diffopt+=iwhite
set smartcase
set relativenumber
set nobackup
set nowritebackup
set updatetime=300
set hidden

set completeopt=menu
set mousemodel=popup
set backspace=2
set number
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
set mouse=n
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
set signcolumn=yes
set colorcolumn=80

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

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_linters['typescript'] = ['eslint']
let g:ale_linters['typescriptreact'] = ['eslint']
let g:ale_linters['markdown'] = []
let g:ale_linters['graphql'] = []
let g:ale_linters['rust'] = ['rls']

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['typescript'] = ['eslint']
let g:ale_fixers['typescriptreact'] = ['prettier']
let g:ale_fixers['markdown'] = ['prettier']
let g:ale_fixers['html'] = ['prettier']
let g:ale_fixers['ruby'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['graphql'] = ['prettier']
let g:ale_fixers['scss'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['rust'] = ['rustfmt']
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'normal'
" let g:ale_sign_error = ' '
" let g:ale_sign_warning = ' '
hi ALEError guifg=#000000 guibg=#ffe3e3
hi ALEErrorSign guifg=#ffe3e3 guibg=#ffe3e3
hi ALEWarning guifg=#00000 guibg=#fff3bf
hi ALEWarningSign guifg=#fff3bf guibg=#fff3bf
let g:ale_completion_enabled = 0
let g:ale_lint_delay = 0
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_typescript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1
let g:ale_typescript_eslint_use_global = 1

" airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#ale#enabled = 1

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0

let g:ycm_auto_trigger = 1
let g:ycm_semantic_triggers = {
      \   'css': [ 're!^\s{2}', 're!:\s+' ],
      \   'scss': [ 're!\s{2}', 're!:\s+' ],
      \   'javascript': [ '.', ':', '/', "'", '"', 'from', "re!import .* from '"],
      \   'sass': [ 're!\s{2}', 're!:\s+' ],
      \ }

let g:nodejs_complete_config = {
      \  'js_compl_fn': 'jscomplete#CompleteJS',
      \  'max_node_compl_len': 15
      \}

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
let g:Powerline_symbols="fancy"
" let g:ycm_show_diagnostics_ui = 0
let g:fzf_session_path = $HOME . '/.dotfiles-darwin/.dotfiles-vim/session'

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_log_level='debug'
let g:templates_directory = ['~/.vim/templates']
let g:ale_cs_csc_assembly_path = ['/Users/dnehrig/.nuget/packages/',
      \ '/usr/local/share/dotnet/sdk/NuGetFallbackFolder/']

let g:startify_session_persistence = 1
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_lists = [
      \ { 'type': 'dir',       'header': ['   Recent files']  },
      \ { 'type': 'sessions',  'header': ['   Saved sessions']  },
      \ ]

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_change_to_dir = 0
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:ycm_confirm_extra_conf = 0
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
