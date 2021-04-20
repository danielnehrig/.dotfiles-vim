set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
"==== Themes
Plug 'Dave-Elec/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
if has('nvim')
  Plug 'kyazdani42/nvim-web-devicons'
endif

"==== Programming Related
"=== Linting
Plug 'dense-analysis/ale'
"== General
Plug 'Valloric/YouCompleteMe', { 'do': 'rm -rf ./third_party/ycmd/third_party/tern_runtime/node_modules && ./install.py --ts-completer --rust-completer'  }
Plug 'ycm-core/lsp-examples', {'do': './install.py --all'}
"
Plug 'lilydjwg/colorizer'
"= yaml
Plug 'hsanson/vim-openapi'
Plug 'mrk21/yaml-vim'
Plug 'xavierchow/vim-swagger-preview'
Plug 'henrik/vim-yaml-helper'
"= JS / TS
Plug 'sheerun/vim-polyglot'
"= RUST
Plug 'rust-lang/rust.vim'

"==== Testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'tyewang/vimux-jest-test'

"==== Debugging
Plug 'eliba2/vim-node-inspect'

"==== Utility
Plug 'dstein64/vim-startuptime'
Plug 'unblevable/quick-scope'
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
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-slash'

"==== File Managment
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'

"==== Snippets
Plug 'mattn/emmet-vim'
Plug 'aperezdc/vim-template'

"==== git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"==== test
Plug 'janko-m/vim-test' " run test from vim
Plug 'neomake/neomake' " runs make asynchronously in background
Plug 'tpope/vim-dispatch'

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
source ~/.vim/plugged/lsp-examples/lsp.vim
