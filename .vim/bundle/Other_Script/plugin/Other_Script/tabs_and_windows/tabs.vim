" 本脚本用于管理tab标签相关的全局操作

if exists("loaded_tabs")
    finish
endif

let loaded_tabs=1

" tab的快速切换 ---{{{
" F11+num切换
function! TabPos_ActivateBuffer(num)
    let s:count = a:num
    exe "tabfirst"
    exe "tabnext" s:count
endfunction
                   
function! TabPos_Initialize()  
    for i in range(1, 9)
        exe "nnoremap <F11>" . i . " :call TabPos_ActivateBuffer(" . i . ")<CR>"
    endfor
    exe "nnoremap <F11>0 :call TabPos_ActivateBuffer(10)<CR>"
endfunction
                                 
autocmd VimEnter * call TabPos_Initialize()

" F11+[-=]左右切换
nnoremap <F11>- gT
nnoremap <F11>= gt

" F11+` 关闭当前tab
nnoremap <F11>` :tabc<CR>

" F11+space 新建tab
nnoremap <F11><space> :tabnew<CR>

" F11+F11 将分屏转换为标签
nnoremap <F11><F11> <C-W>T
" }}}--- tab的快速切换
echom "tabs.vim done"
