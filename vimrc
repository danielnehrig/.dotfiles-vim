"Pathogen
call pathogen#runtime_append_all_bundles()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


"============== Custom scripts ===============
source ~/.vim/after/syntaxcheck.vim


"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" Syntax-specific settings
source ~/.vim/startup/js.vim
<<<<<<< HEAD
source ~/.vim/startup/php.vim
=======
>>>>>>> ad1539c3f5482bacdf20d35e26b7e7913c951344
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim


<<<<<<< HEAD
=======
set encoding=utf-8
set syntax=enable
set guifont=Liberation_Mono_for_Powerline:h10
set laststatus=2
set showtabline=2
set noshowmode
set showcmd
set ruler
set cursorline
set autoread
set tabstop=2
set shiftwidth=2
set expandtab
set list
set nowrap
set nojoinspaces
"set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set showbreak=↪\
"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have :s///g flag by default on
>>>>>>> ad1539c3f5482bacdf20d35e26b7e7913c951344
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{2}', 're!:\s+' ],
    \ }

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
let g:Powerline_symbols="fancy"
let g:ycm_show_diagnostics_ui = 0

set tags+=~/.vim/tags/tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/qt4
