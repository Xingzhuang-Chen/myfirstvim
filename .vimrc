" vundle配置 ---{{{
set nocompatible " 去除vi一致性
filetype off     " 取消自动文件类型检测
" 设置包括vundle和初始化相关的runtimepath
set runtimepath+=~/.vim/bundle/Vundle.vim " 添加vundle脚本
" Vundle安装插件配置
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
" "call vundle#begin('~/some/path/here')

" 让vundle管理插件版本，必须
Plugin 'VundleVim/Vundle.vim'

Plugin 'potion'
Plugin 'cpp'
Plugin 'auto-pairs'
Plugin 'nerdtree'
Plugin 'Other_Script'
Plugin 'minibufexplorer'
Plugin 'taglist'
Plugin 'omnicppcomplete'
Plugin 'supertab'
" 退出vundle插件配置
call vundle#end()
filetype plugin indent on " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
" "filetype plugin on
" }}}--- vundle配置

" 基本设置 ---{{{
echo '>^.^<'
set showmatch " 括号配对时，提示正括号位置
set matchtime=10 " 配对括号提示时间，0.1s为单位
set number " 显示行号
set relativenumber " 显示相对行号
set numberwidth=4 " 行号最小宽度
set wrap " 跨行显示
hi Comment ctermfg=blue " 修改注释颜色，使其在putty中清晰显示
set hlsearch "搜索高亮
set incsearch "搜索立即高亮
nohlsearch
" }}}--- 基本设置

" 缩进相关配置 ---{{{
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
"}}}---

" 文件类型相关设置 ---{{{

" C/C++ ---{{{
" 快速注释 ---{{{
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :nnoremap <buffer> <localleader>c I//<esc> 
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> retrun return
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> ret return
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> incldue include
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> reutrn return
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> incdlue include
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> inlcude include
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> sting string
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> mian main
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> usign using
autocmd BufNewFile,BufRead *.c,*.cpp,*.h  :iabbrev <buffer> vectro vector
" }}}--- 快速注释
" }}}--- C/C++

" }}}--- 文件类型相关设置

" 映射 ---{{{
" 设置leader映射 ---{{{
let mapleader = ","
let maplocalleader = ","
" }}}--- 设置leader映射

" 键盘映射通用 ---{{{
"
" }}}--- 键盘映射通用

" 键盘映射normal模式 ---{{{
"nnoremap - ddp
"nnoremap _ kddpk
nnoremap <localleader><c-u> viwU
nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
nnoremap <localleader>sv :source $MYVIMRC<cr>
nnoremap H 0
nnoremap L $
nnoremap <localleader>l L
nnoremap <localleader>h H
" }}}--- 键盘映射normal模式

" 键盘映射insert模式 ---{{{
inoremap <localleader><c-u> <esc>viwUi
":inoremap <localleader>w <esc>:execute "match Error /\v\s*$"
" }}}--- 键盘映射insert模式

" 键盘映射virtual模式 ---{{{

" }}}--- 键盘映射virtual模式

" 取消方向键映射 ---{{{
inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
vnoremap <right> <nop>
vnoremap <left> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
" }}}--- 取消方向键映射

" 快速<esc> ---{{{
inoremap jk <esc>
" :inoremap <esc> <nop>
" }}}--- 快速<esc>

inoremap <leader><Tab> <Tab>
" }}}--- 映射

" 状态条 ---{{{
set statusline=%F
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L
" }}}--- 状态条

" Vim脚本文件 语句折叠---{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevelstart=0
augroup END
" }}}


" minibufExplore 配置 ---{{{
"
"let g:miniBufExplMapCTabSwitchBufs = 1
set splitbelow
" 去掉状态条
"execute "normal! ,mbe"
"set laststatus=0
"set nonumber
"set norelativenumber
" }}}--- minibufExplore 配置

" taglist配置 ---{{{
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=0 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  
let Tlist_Use_Horiz_Window=0
let Tlist_WinWeight=10
let Tlist_WinHigh=10
" }}}---


" omni配置 ---{{{
filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"
set tags+=~/.vim/tags/cpp_src/tags

" }}}

