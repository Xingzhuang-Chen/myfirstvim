" 本脚本用于管理全局模式下窗口布局

if exists("load_windows")
    finish
endif
let load_windows=1

" 窗口管理快捷键
nnoremap <F10> <C-w>
nnoremap <F10><F10> <C-w><C-w>
nnoremap <F10>` :q<CR>
