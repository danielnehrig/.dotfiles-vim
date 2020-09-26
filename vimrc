set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

call vundle#begin()
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'hsanson/vim-openapi'
Plugin 'junegunn/vim-peekaboo'
Plugin 'junegunn/vim-slash'
Plugin 'mhinz/vim-startify'
Plugin 'arcticicestudio/nord-vim'
Plugin 'junegunn/vim-emoji'
Plugin 'junegunn/vim-easy-align'
Plugin 'rainglow/vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mrk21/yaml-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'xavierchow/vim-swagger-preview'
Plugin 'dense-analysis/ale'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-repeat'
Plugin 'zoubin/vim-gotofile'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'aperezdc/vim-template'
Plugin 'adelarsq/vim-matchit'
Plugin 'prettier/vim-prettier'
Plugin 'sukima/xmledit'
Plugin 'moll/vim-node'
Plugin 'benmills/vimux'
Plugin 'tyewang/vimux-jest-test'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
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
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-surround.git'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'jasmine/jasmine'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'vim-scripts/a.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'terryma/vim-multiple-cursors'
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
