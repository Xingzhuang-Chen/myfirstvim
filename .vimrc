" vundle配置 ---{{{
:set nocompatible " 去除vi一致性
:filetype off     " 取消自动文件类型检测
" 设置包括vundle和初始化相关的runtimepath
:set runtimepath+=~/.vim/bundle/Vundle.vim " 添加vundle脚本
" Vundle安装插件配置
:call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
" "call vundle#begin('~/some/path/here')

" 让vundle管理插件版本，必须
:Plugin 'VundleVim/Vundle.vim'

:Plugin 'potion'
:Plugin 'cpp'
" 退出vundle插件配置
:call vundle#end()
:filetype plugin indent on " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
" "filetype plugin on
" }}}--- vundle配置

" 基本设置 ---{{{
:echo '>^.^<'
:set showmatch " 括号配对时，提示正括号位置
:set matchtime=10 " 配对括号提示时间，0.1s为单位
:set number " 显示行号
:set relativenumber " 显示相对行号
:set numberwidth=4 " 行号最小宽度
:set wrap " 跨行显示
:hi Comment ctermfg=blue " 修改注释颜色，使其在putty中清晰显示
:set hlsearch "搜索高亮
:set incsearch "搜索立即高亮
:nohlsearch
" }}}--- 基本设置

" 缩进相关配置 ---{{{
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set softtabstop=4
"}}}---

" 文件类型相关设置 ---{{{

" C/C++ ---{{{
" 快速注释 ---{{{
:autocmd BufNewFile,BufRead *.c,*.cpp  :nnoremap <buffer> <localleader>c I//<esc> 
:autocmd BufNewFile,BufRead *.c,*.cpp  :iabbrev <buffer> return NOPENOPENOPE
:autocmd BufNewFile,BufRead *.c,*.cpp  :iabbrev <buffer> ret return 
" }}}--- 快速注释
" }}}--- C/C++

" }}}--- 文件类型相关设置

" 映射 ---{{{
" 设置leader映射 ---{{{
:let mapleader = ","
:let maplocalleader = ","
" }}}--- 设置leader映射

" 键盘映射通用 ---{{{
"
" }}}--- 键盘映射通用

" 键盘映射normal模式 ---{{{
:nnoremap - ddp
:nnoremap _ kddpk
:nnoremap <localleader><c-u> viwU
:nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
:nnoremap <localleader>sv :source $MYVIMRC<cr>
:nnoremap <localleader>h 0
:nnoremap <localleader>l $
" }}}--- 键盘映射normal模式

" 键盘映射insert模式 ---{{{
:inoremap <localleader><c-u> <esc>viwUi
":inoremap <localleader>w <esc>:execute "match Error /\v\s*$"
" }}}--- 键盘映射insert模式

" 键盘映射virtual模式 ---{{{

" }}}--- 键盘映射virtual模式

" 取消方向键映射 ---{{{
:inoremap <right> <nop>
:inoremap <left> <nop>
:inoremap <up> <nop>
:inoremap <down> <nop>
:nnoremap <right> <nop>
:nnoremap <left> <nop>
:nnoremap <up> <nop>
:nnoremap <down> <nop>
:vnoremap <right> <nop>
:vnoremap <left> <nop>
:vnoremap <up> <nop>
:vnoremap <down> <nop>
" }}}--- 取消方向键映射

" 快速<esc> ---{{{
:inoremap jk <esc>
" :inoremap <esc> <nop>
" }}}--- 快速<esc>

" }}}--- 映射

" 状态条 ---{{{
:set statusline=%F
:set statusline+=%=
:set statusline+=%l
:set statusline+=/
:set statusline+=%L
" }}}--- 状态条

" Vim脚本文件 语句折叠---{{{
:augroup filetype_vim
   :autocmd!
   :autocmd FileType vim setlocal foldmethod=marker
   :autocmd FileType vim setlocal foldlevelstart=0
:augroup END
" }}}
