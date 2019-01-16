" Build C
autocmd FileType c map <F8> :w <CR> :!clear; gcc % -o %< && ./%< <CR>
" Build C with mysql
autocmd FileType c map <F9> :w <CR> :!clear; gcc -I /usr/local/mysql/include/mysql/ -L /usr/local/mysql/lib/ -lmysqlclient % -o %< && ./%< <CR>
" Build CPP
autocmd FileType cpp map <F8> :w <CR> :!clear; g++ % -o %< && ./%< <CR>
" Build Java
autocmd FileType java map <F8> :w <CR> :!clear; javac % && java %< <CR>
" Build Groovy
autocmd FileType groovy map <F8> :w <CR> :!clear; groovy % <CR>
" Build C#
autocmd FileType c# map <F8> :w <CR> :!clear; make <CR>
