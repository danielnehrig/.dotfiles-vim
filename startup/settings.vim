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
autocmd BufNewFile,BufRead * CocDisable

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

" ALE Settings
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'jsx': ['stylelint', 'eslint'],
      \   'typescript': ['tsserver', 'tslint'],
      \   'tsx': ['tsserver', 'tslint'],
      \   'cs': ['csc'],
      \   'vue': ['eslint']
      \}

let g:ale_fixers = {
      \    'javascript': ['eslint'],
      \    'typescript': ['prettier', 'tslint'],
      \    'vue': ['eslint'],
      \    'cs': ['uncrustify'],
      \    'scss': ['prettier'],
      \    'html': ['prettier']
      \}
let g:ale_fix_on_save = 1

" airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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

let fock = matchstr(getcwd(), 'dotfiles')

if !empty(fock)
  let g:startify_custom_header = [
        \ "       __      __  _____ __         ",
        \ "  ____/ /___  / /_/ __(_) /__  _____",
        \ " / __  / __ \/ __/ /_/ / / _ \/ ___/",
        \ "/ /_/ / /_/ / /_/ __/ / /  __(__  ) ",
        \ "\__,_/\____/\__/_/ /_/_/\___/____/  ",
        \ '   '
        \ ]
endif

let g:test#javascript#runner = 'jest'
let g:test#typescript#runner = 'jest'
let g:test#strategy = 'neomake'

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

" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)

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

" initially empty status
let g:testing_status = ''

" Start test
function! TestStarted() abort
  let g:testing_status = 'Test ⌛'
endfunction

" Show message when all tests are passing
function! TestFinished() abort
  let context = g:neomake_hook_context
  if context.jobinfo.exit_code == 0
    let g:testing_status = 'Test ✅'
  endif
  if context.jobinfo.exit_code == 1
    let g:testing_status = 'Test ❌'
  endif
endfunction
augroup neomake_hook
  au!
  autocmd User NeomakeJobFinished call TestFinished()
  autocmd User NeomakeJobStarted call TestStarted()
augroup END

let g:ycm_confirm_extra_conf = 0
let g:test#javascript#jest#executable = 'npx jest --config ./app/views/jest.config.js --forceExit --detectOpenHandles'
let g:test#typescript#jest#executable = 'npx jest --config ./app/views/jest.config.js --forceExit --detectOpenHandles'
let g:test#ts#jest#executable = 'npx jest --config ./app/views/jest.config.js --forceExit --detectOpenHandles'
let g:test#js#jest#executable = 'npx jest --config ./app/views/jest.config.js --forceExit --detectOpenHandles'
let g:test#preserve_screen = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1"
