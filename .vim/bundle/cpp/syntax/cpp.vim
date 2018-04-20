if exists("my_cpp_syntax")
    finish
endif

let my_cpp_syntax="cpp"

syntax match BlankError "\v[ ]+$"
syntax match MarkLose "\v[^;{}(),'"]$"

highlight link BlankError ErrorMsg
highlight link MarkLose ErrorMsg
echom "hello"
