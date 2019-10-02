set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tasn/vim-tsx'
Plugin 'scrooloose/nerdcommenter'
Plugin 'aperezdc/vim-template'
Plugin 'adelarsq/vim-matchit'
Plugin 'sukima/xmledit'
Plugin 'moll/vim-node'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'alvan/vim-closetag'
Plugin 'vim-scripts/SyntaxComplete'
Plugin 'sickill/vim-pasta'
Plugin 'andreshazard/vim-freemarker' 
Plugin 'isRuslan/vim-es6'
Plugin 'juvenn/mustache.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Quramy/tsuquyomi'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround.git'
Plugin 'mattn/emmet-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'jasmine/jasmine'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ternjs/tern_for_vim'
Plugin 'jamescarr/snipmate-nodejs'
call vundle#end()

"============== Custom scripts ===============
source ~/.vim/after/syntaxcheck.vim


"============== Filetype stuff ===============
filetype plugin on
filetype indent on
syntax enable

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" Compile and Run settings
source ~/.vim/startup/compile.vim
source ~/.vim/startup/run.vim

" Syntax-specific settings
source ~/.vim/startup/js.vim
source ~/.vim/startup/php.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim


set signcolumn=yes
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{2}', 're!:\s+' ],
    \   'scss': [ 're!\s{2}', 're!:\s+' ],
    \   'sass': [ 're!\s{2}', 're!:\s+' ],
    \   'js': [ 're!.', 're!=\s+' ],
    \ }

let g:nodejs_complete_config = {
            \  'js_compl_fn': 'jscomplete#CompleteJS',
            \  'max_node_compl_len': 15
            \}
" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
let g:Powerline_symbols="fancy"
let g:ycm_show_diagnostics_ui = 0

set tags=./tags;,tags;
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
let g:syntastic_javascript_checkers = ['eslint']
"let g:EclimCompletionMethod = 'omnifunc'
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
