"============== Unmap arrow keys ===============
no <left> <Nop>
no <right> <Nop>
no <down> ddp
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
"turn off search highlighting
nmap <C-h> :noh<CR>

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

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" replace string contents with recently copied text
nmap <Leader>r" "_di"P
nmap <Leader>c" "_di"Pa
nmap <Leader>r' '_di'P
nmap <Leader>c' '_di'Pa

" hunk git
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nmap <space>b :Buffers<CR>
nmap <C-p> :Files<CR>
nmap <C-]> :YcmCompleter GoTo<CR>
nmap <space>yr :YcmCompleter GoToReferences<CR>
nmap <space>[ :YcmCompleter FixIt<CR>
nmap <space>a :ALEFix<CR>

let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" `SPC l s` - save current session
nnoremap <leader>ls :SSave<CR>
nnoremap <space>pf :Sessions<CR>

" " `SPC l l` - list sessions / switch to different project
nnoremap <leader>ll :SClose<CR>
