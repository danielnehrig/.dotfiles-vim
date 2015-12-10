"Pathogen
call pathogen#runtime_append_all_bundles()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"============== Custom scripts ===============
" source ~/.vim/after/syntaxcheck.vim


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
source ~/.vim/startup/php.vim
source ~/.vim/startup/vim.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim


set encoding=utf-8
" set syntax=enable
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
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set showbreak=↪\
"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have :s///g flag by default on
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0
let g:neocomplete#enable_at_startup = 1
au BufRead,BufNewFile *.scss set ft=scss.css
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }


" Configure YCM
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
" nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100
let g:Powerline_symbols="fancy"
