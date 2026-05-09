" Vim syntax file
" Language: STOL
" Maintainer: Jack Symonds
" Version: 1

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax match stolComment ";.*$"

syntax keyword stolConstant .true. .false.

syntax keyword stolOperator .eq. .ne. .lt. .gt. .le. .ge.
syntax keyword stolOperator .not. .and. .or. .xor.

syntax match stolBuiltin "\sp@"
syntax match stolBuiltin "^p@"

syntax match stolBuiltin "/\S*"

syntax match stolLabel "^\S\+:"

syntax keyword stolDirective assign as chart ch cmd convert con do edit ed else
syntax keyword stolDirective enddo endif endproc event format fo free global
syntax keyword stolDirective goto go g history hi if interval in kill killproc killp
syntax keyword stolDirective let limits lim list li namespace page p position po
syntax keyword stolDirective proc return run snap sn start s step term te then
syntax keyword stolDirective until wait w

syntax keyword stolFunction abs acos asin atan atan2 bwand bwinvert bwlshift bwor
syntax keyword stolFunction bwreverse bwrshift bwxor ceil coalesce concat contains
syntax keyword stolFunction convertescape cos cosh escapexmlchars exists floor
syntax keyword stolFunction format getenv iif iscommand isdate isfloat isglobal
syntax keyword stolFunction isinlimits isint islocal ismnemonic isnull isnumber
syntax keyword stolFunction isquality isred isredhi isredlo isstatic isstring
syntax keyword stolFunction issymbol istime isunsigned isvariable isyellow
syntax keyword stolFunction isyellowhi isyellowlo ln log lowercase max min mkdate
syntax keyword stolFunction mkepochdate mktime mod name replace round roundeven
syntax keyword stolFunction sin sinh split sqrt strcasestr strfdate strlen
syntax keyword stolFunction strpackhex strstr strtok strtol strtoul substr tan
syntax keyword stolFunction tanh ternary todate tofloat tohexstring toint tonull
syntax keyword stolFunction tostring tostringnotnull totime tounsigned trunc
syntax keyword stolFunction unconvertescape uppercase

syntax keyword stolKeyword at local sho speed

hi def link stolComment   Comment
hi def link stolConstant  Constant
hi def link stolOperator  Operator
hi def link stolBuiltin   Function
hi def link stolDirective Statement
hi def link stolFunction  Function
hi def link stolLabel     Label
hi def link stolKeyword   Keyword

let b:current_syntax = "stol"

