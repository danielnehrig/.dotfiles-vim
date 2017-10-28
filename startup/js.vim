autocmd FileType javascript noremap <F4> :silent exe "s/\\v^(\\s*)(.+)$/\\1\\2\r\\1console.log(" . expand('<cword>') . ", '" . expand('<cword>') . "');"<CR>
au FileType javascript let b:javascript_fold = 1
au FileType javascript set foldmethod=syntax
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

