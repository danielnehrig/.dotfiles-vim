
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround.git'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'honza/vim-snippets'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'jasmine/jasmine'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'nathanaelkane/vim-indent-guides.git'


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

" Syntax-specific settings
source ~/.vim/startup/js.vim
source ~/.vim/startup/php.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/html.vim


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
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
