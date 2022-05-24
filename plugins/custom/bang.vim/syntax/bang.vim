" Vim syntax file
" Language: Bang

" Usage Instructions
" Put this file in .vim/syntax/bang.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.bang set filetype=bang

if exists("b:current_syntax")
  finish
endif

syn keyword bangTodos TODO XXX FIXME NOTE

" Language keywords
syn keyword bangKeywords if else while do include memory proc const end offset assert reset in inline here let addr-of call-like peek

" Comments
syn region bangCommentLine start="//" end="$" contains=bangTodos

" String literals
syn region bangString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=bangEscapes

" Char literals
syn region bangChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=bangEscapes

" Escape literals \n, \r, ....
syn match bangEscapes display contained "\\[nr\"']"

" Number literals
syn match bangNumber "\d\+"

" Type names the compiler recognizes
syn keyword bangTypes addr int ptr bool

" Operators
syn match bangOperators "=\|!=\|>\|<\|>=\|<=\|+\|-\|*\|divmod\|max\|shr\|shl\|or\|and\|not\|!8\|@8\|!16\|@16\|!32\|@32\|!64\|@64\|cast(int)\|cast(bool)\|cast(ptr)@!"

" Intrinsics
syn keyword bangIntrinsics dup swap drop print over rot

" Syscall
syn match bangSyscall "syscall\d\+"

" Set highlights
hi def link bangTodos       Todo
hi def link bangKeywords    Keyword
hi def link bangCommentLine Comment
hi def link bangString      String
hi def link bangNumber      Number
hi def link bangTypes       Type
hi def link bangChar        Character
hi def link bangEscapes     SpecialChar
hi def link bangOperators   Keyword
hi def link bangIntrinsics  Function
hi def link bangSyscall     Keyword

let b:current_syntax = "bang"

