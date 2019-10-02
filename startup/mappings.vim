" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"============== Custom Mappings ===============
" general mapping
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>

"turn off search highlighting
nmap <C-n> :noh<CR>

"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

" delete surrounding characters

" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

" diff
nmap ]c ]czz
nmap [c [czz

" default to very magic
no / /\v

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"open tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

" replace string contents with recently copied text
nmap <Leader>r" "_di"P
nmap <Leader>c" "_di"Pa
nmap <Leader>r' '_di'P
nmap <Leader>c' '_di'Pa

imap <C-J>s <Plug>snipMateNextOrTrigger

" Build C
autocmd FileType c map <F8> :w <CR> :!clear; gcc % -o %< && ./%< <CR>
" Build C and mysql
autocmd FileType c map <F9> :w <CR> :!clear; gcc -I /usr/local/mysql/include/mysql/ -L /usr/local/mysql/lib/ -lmysqlclient % -o %< && ./%< <CR>
" Build CPP
autocmd FileType cpp map <F8> :w <CR> :!clear; g++ % -o %< && ./%< <CR>
" Build Java
autocmd FileType java map <F8> :w <CR> :!clear; javac % && java %< <CR>
" Build Groovy
autocmd FileType groovy map <F8> :w <CR> :!clear; groovy % <CR>
autocmd FileType twig imap <leader>a[ [{[  ]}]<ESC>Bhi

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>p :CtrlPBuffer<CR>
nmap <F9> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
