set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-repeat'
Plugin 'zoubin/vim-gotofile'
Plugin 'gorkunov/smartgf.vim.git'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'aperezdc/vim-template'
Plugin 'adelarsq/vim-matchit'
Plugin 'prettier/vim-prettier'
Plugin 'sukima/xmledit'
Plugin 'moll/vim-node'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
" Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'alvan/vim-closetag'
" Plugin 'vim-scripts/SyntaxComplete'
Plugin 'sickill/vim-pasta'
Plugin 'andreshazard/vim-freemarker' 
Plugin 'isRuslan/vim-es6'
Plugin 'juvenn/mustache.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Quramy/tsuquyomi'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
"Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-surround.git'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/argtextobj.vim'
" Plugin 'scrooloose/syntastic'
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
" Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ternjs/tern_for_vim'
Plugin 'jamescarr/snipmate-nodejs'
call vundle#end()

"============== Filetype stuff ===============
filetype plugin on
filetype indent on
syntax enable

"============== Script configs ===============

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
source ~/.vim/startup/php.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim
source ~/.vim/startup/coc.vim


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

let g:ycm_filetype_blacklist = { 'yaml': 1, 'lua': 1, 'json': 1, 'vim': 1  }
autocmd BufNew,BufEnter * execute "silent! CocDisable"
autocmd BufNew,BufEnter *.yaml,*.json,*.yaml,*.lua execute "silent! CocEnable"
autocmd BufLeave *.yaml,*.json,*.vim,*.lua execute "silent! CocDisable"


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
" let g:syntastic_typescript_checkers = ['tslint']
" let g:syntastic_ts_checkers = ['tslint']
" let g:syntastic_javascript_checkers = ['eslint']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_log_level='debug'
let g:templates_directory = ['~/.vim/templates']
let g:ale_cs_csc_assembly_path = ['/Users/dnehrig/.nuget/packages/',
      \ '/usr/local/share/dotnet/sdk/NuGetFallbackFolder/']

set rtp+=/usr/local/opt/fzf
