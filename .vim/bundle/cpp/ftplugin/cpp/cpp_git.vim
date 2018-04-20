" 本文件为针对C++的git相关操作脚本

" 获取文件相关信息
if !exists("b:filename")
    let b:filename=expand("%:r") " 文件名
endif
if !exists("b:filepath")
    let b:filepath=expand("%:p:h")."/" " 文件路径
endif

nnoremap <buffer> <F12><F1> :execute "!git status"<CR>
nnoremap <buffer> <F12><F2> :execute "!git add -u"<CR>
nnoremap <buffer> <F12><F3> :execute "!git commit"<CR>
nnoremap <buffer> <F12><F4> :execute "!git push origin master"<CR>
nnoremap <buffer> <F12><F5> :execute "!git init"<CR>
nnoremap <buffer> <F12><F6> :execute "!git add -A"<CR>
