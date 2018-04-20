" 本脚本用于添加c++编译相关的快捷功能

" 获取文件相关信息
if !exists("b:filename")
    let b:filename=expand("%:r")    " 文件名
endif
if !exists("b:filepath")
    let b:filepath=expand("%:p:h")."/" " 文件路径
endif

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <buffer> <F3> :execute "!ctags -R --sort=yes --c++-kinds=+p ".
            \ "--fields=+iaS --extra=+q --language-force=C++"<CR>
nnoremap <buffer> <F4> :execute "!".b:filepath.b:filename.".out"<CR>
nnoremap <buffer> <F5> :execute "!clear"<CR>
            \ :execute "!gdb ".b:filepath.b:filename.".out"<CR>
nnoremap <buffer> <F6> :w<CR>:execute "!clear"<CR>:execute "!g++ -std=c++11 " .b:filepath.
            \ b:filename . ".cpp -o ".b:filepath. b:filename .".out"<CR>
nnoremap <buffer> <F7> :w<CR>:execute "!clear"<CR>:execute "!g++ -g -std=c++11 " .b:filepath.
            \ b:filename . ".cpp -o ".b:filepath. b:filename .".out"<CR>
