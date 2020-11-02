set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
"==== Themes
Plug 'rainglow/vim'
"Plug 'morhetz/gruvbox'
Plug 'Dave-Elec/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

"==== Programming Related
"=== Linting
Plug 'dense-analysis/ale'
"== General
Plug 'Valloric/YouCompleteMe', { 'do': 'rm -rf ./third_party/ycmd/third_party/tern_runtime/node_modules && ./install.py --ts-completer --rust-completer'  }
Plug 'ycm-core/lsp-examples', {'do': './install.py --all'}
Plug 'neoclide/coc.nvim', {'do': 'yarn'}
"= zsh
Plug 'tjdevries/coc-zsh'
"= md
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'   }
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
"= yaml
Plug 'hsanson/vim-openapi'
Plug 'mrk21/yaml-vim'
Plug 'xavierchow/vim-swagger-preview'
Plug 'henrik/vim-yaml-helper'
"= JS / TS
Plug 'moll/vim-node'
Plug 'leafgarland/typescript-vim'

"==== Testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'tyewang/vimux-jest-test'

"==== Debugging
Plug 'eliba2/vim-node-inspect'

"==== Utility
Plug 'preservim/tagbar'
Plug 'neomake/neomake'
Plug 'junegunn/vim-peekaboo'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-repeat'
Plug 'zoubin/vim-gotofile'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'adelarsq/vim-matchit'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-slash'

"==== File Managment
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'

"==== Snippets
Plug 'isRuslan/vim-es6'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jamescarr/snipmate-nodejs'
Plug 'mattn/emmet-vim'
Plug 'aperezdc/vim-template'

"==== git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"==== vim extendsion
Plug 'tomtom/tlib_vim'
Plug 'xolox/vim-misc'

"==== Unknown
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
source ~/.vim/plugged/lsp-examples/vimrc.generated
" source ~/.vim/startup/coc.vim

" Compile and Run settings
source ~/.vim/startup/compile.vim
source ~/.vim/startup/run.vim

" Syntax-specific settings
