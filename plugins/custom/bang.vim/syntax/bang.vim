" Vim syntax file
" Language: Bang

" Usage Instructions
" Put this file in .vim/syntax/bang.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.bang set filetype=bang

if exists("b:current_syntax")
  finish
endif

syntax keyword bangTodos TODO XXX FIXME NOTE

" Language keywords
syntax keyword bangKeywords if else while do include memory proc const end offset assert reset in inline here let addr-of call-like peek return

" Comments
syntax region bangCommentLine start="//" end="$" contains=bangTodos

" String literals
syntax region bangString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=bangEscapes

" Char literals
syntax region bangChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=bangEscapes

" Escape literals \n, \r, ....
syntax match bangEscapes display contained "\\[nr\"']"

" Number literals
syntax match bangNumber "\v<\d+>"

" Type names the compiler recognizes
syntax keyword bangTypeNames addr int ptr bool

" Operators
syntax match bangOperators "+\|-\|*\|=\|!\|>\|<\|>=\|<=\|==\|!=\|@\|@!"

" Set highlights
highlight default link bangTodos Todo
highlight default link bangKeywords Keyword
highlight default link bangCommentLine Comment
highlight default link bangString String
highlight default link bangNumber Number
highlight default link bangTypeNames Type
highlight default link bangChar Character
highlight default link bangEscapes SpecialChar
highlight default link bangOperators Keyword 

let b:current_syntax = "bang"

