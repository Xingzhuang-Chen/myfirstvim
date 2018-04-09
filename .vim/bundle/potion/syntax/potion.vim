if exists("b:current_syntax")
    finish
endif
" 高亮关键词
syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return
" 高亮库函数
syntax keyword potionFunction print join string 
" 高亮注释
syntax match potionComment "\v#.*$"
" 高亮运算符
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
" 高亮常数
syntax match potionNumber "\v[0-9]"
syntax match potionNumber "\v0x[0-9a-f]+"
syntax match potionNumber "\v[0-9]+\.[0-9]+"
syntax match potionNumber "\v[0-9]+e[0-9]+"
syntax match potionNumber "\v[0-9]+\.[0-9]+e[0-9]+"
syntax match potionNumber "\v[0-9]+e-[0-9]+"
syntax match potionNumber "\v[0-9]+\.[0-9]+e-[0-9]+"
syntax match potionNumber "\v[0-9]+e\+[0-9]+"
syntax match potionNumber "\v[0-9]+\.[0-9]+e\+[0-9]+"

" 链接高亮
highlight link potionComment Comment
highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionOperator Operator
highlight link potionNumber Number

let b:current_syntax = "potion"
