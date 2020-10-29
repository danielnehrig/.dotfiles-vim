set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim'
Plug 'vim-airline/vim-airline'
Plug 'janko-m/vim-test'
Plug 'neomake/neomake'
Plug 'henrik/vim-yaml-helper'
Plug 'eliba2/vim-node-inspect'
Plug 'vim-airline/vim-airline-themes'
Plug 'hsanson/vim-openapi'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-startify'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-easy-align'
Plug 'rainglow/vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'dominickng/fzf-session.vim'
Plug 'mrk21/yaml-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'xavierchow/vim-swagger-preview'
Plug 'dense-analysis/ale'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'zoubin/vim-gotofile'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'aperezdc/vim-template'
Plug 'adelarsq/vim-matchit'
Plug 'prettier/vim-prettier'
Plug 'sukima/xmledit'
Plug 'moll/vim-node'
Plug 'benmills/vimux'
Plug 'tyewang/vimux-jest-test'
Plug 'leafgarland/typescript-vim'
Plug 'sickill/vim-pasta'
Plug 'isRuslan/vim-es6'
Plug 'Quramy/tsuquyomi'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-surround.git'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter.git'
Plug 'vim-scripts/argtextobj.vim'
Plug 'scrooloose/nerdtree.git'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'MarcWeber/vim-addon-mw-utils.git'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-haml'
Plug 'terryma/vim-multiple-cursors'
Plug 'jamescarr/snipmate-nodejs'
call plug#end()

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
source ~/.vim/startup/coc.vim

" Syntax-specific settings
