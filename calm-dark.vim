" Vim colorscheme - CalmDark
" Maintainer:   Sergei Minaev <i@zenux.ru>
" Url:          https://github.com/SergeiMinaev/calm-dark.vim
" License:      MIT
"
" This theme is based on alduin.vim ( https://github.com/AlessandroYorba/Alduin )

set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="calm-dark"

let s:mono0 = "black"
let s:mono1 = "black"
let s:mono2 = "black"
let s:mono3 = "#878787"
let s:mono4 = "#a3a3a3"
let s:mono5 = "#bfb8aa"
let s:red0 = "#9e4444"
let s:yellow0 = "#b5a387"
let s:yellow1 = "#a7957a"
let s:yellow2 = "#dfaf87"

" {{{ Highlight function (based on OceanicNext colorscheme)
function! s:hi(group, fg)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg
  endif
endfunction
" }}}


" COMMON COLORS AND SETTINGS
highlight Test guifg=green guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
"highlight Function guifg=#8e4545 guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
"
" {{{ call s::hi(group, guifg)
call s:hi('Function', s:red0)
call s:hi('Normal', s:mono5)
call s:hi('String', s:yellow1)
call s:hi('Statement', s:mono3)

"highlight Function guifg=#9e4444 guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
"highlight Function guifg=green guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
"highlight Label guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
" В TS - свойства объектов
highlight Label guifg=#9e4444 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
"highlight Identifier guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
" В TS ещё и интерфейс после функции и после двоеточия
highlight Identifier guifg=#af5f00 guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
highlight Constant guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
highlight Type guifg=#af875f guibg=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
highlight Special guifg=#786161 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Operator guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Title guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Conditional guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight StorageClass guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight cssIdentifier guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight cssClassName guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight Structure guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Typedef guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Repeat guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Keyword guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight Exception guifg=#878787 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
"highlight Number guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
"highlight Float guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Character guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
"highlight Boolean guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight Include guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
chighlight Define guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
"highlight Comment guifg=#87875f guibg=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
highlight Comment guifg=#786a6a guibg=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE

"WINDOW UI
highlight MoreMsg guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight VimCommentTitle guifg=#87875f guibg=NONE gui=reverse ctermfg=101 ctermbg=NONE cterm=reverse
highlight SpecialComment guifg=#87875f guibg=NONE gui=reverse ctermfg=101 ctermbg=NONE cterm=reverse
highlight Underlined guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Todo guifg=#af5f00 guibg=NONE gui=reverse ctermfg=130 ctermbg=NONE cterm=reverse
highlight Visual guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight Question guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Search guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight MatchParen guifg=#878787 guibg=NONE gui=reverse ctermfg=102 ctermbg=NONE cterm=reverse
highlight Error guifg=#af5f5f guibg=#121212 gui=reverse ctermfg=131 ctermbg=233 cterm=reverse
highlight ErrorMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight WarningMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Directory guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Cursor guifg=#000000 guibg=#dfdfaf gui=NONE ctermfg=16 ctermbg=187 cterm=NONE
highlight CursorLineNR guifg=#878787 guibg=NONE gui=reverse ctermfg=102 ctermbg=NONE cterm=reverse
highlight WildMenu guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight ModeMsg guifg=#dfdfaf guibg=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
highlight Macro guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight PreCondit guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight IncSearch guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

"DIFF
highlight DiffAdd guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight DiffText guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight DiffChange guifg=#005f5f guibg=NONE gui=reverse ctermfg=23 ctermbg=NONE cterm=reverse
highlight DiffDelete guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse

"SPELLING
highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
highlight SpellRare guifg=#d75f00 guibg=NONE gui=undercurl ctermfg=166 ctermbg=NONE cterm=undercurl

"WINDOW UI
highlight StatusLine guifg=#cccccc guibg=#121212 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight StatusLineNC guifg=#6c6c6c guibg=#262626 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
highlight StatusLineTerm guifg=#9e9e9e guibg=#262626 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight StatusLineTermNC guifg=#6c6c6c guibg=#262626 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
highlight Pmenu guifg=#626262 guibg=#262626 gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
highlight PmenuSel guifg=#dfdfaf guibg=#262626 gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
highlight PmenuSbar guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
highlight TabLine guifg=#6c6c6c guibg=#262626 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
highlight TabLineSel guifg=#9e9e9e guibg=#262626 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight TabLineFill guifg=#6c6c6c guibg=#262626 gui=NONE ctermfg=242 ctermbg=235 cterm=NONE
highlight CursorLine guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
highlight Folded guifg=#444444 guibg=#121212 gui=NONE ctermfg=238 ctermbg=233 cterm=NONE
highlight VertSplit guifg=#444444 guibg=#1c1c1c gui=NONE ctermfg=238 ctermbg=234 cterm=NONE
highlight LineNr guifg=#444444 guibg=#121212 gui=NONE ctermfg=238 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#87afaf guibg=#1c1c1c gui=NONE ctermfg=109 ctermbg=234 cterm=NONE
highlight SignColumn guifg=#87875f guibg=#080808 gui=NONE ctermfg=101 ctermbg=233 cterm=NONE
highlight NonText guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
highlight SpecialKey guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE

" HTML
call s:hi('htmlTag', s:mono3)
hi! link htmlEndTag htmlTag

highlight htmlArg guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
"hi! link htmlTag Statement
"highlight htmlTagName guifg=#91896c guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
hi! link htmlTagName Statement
hi! link htmlArg Statement
hi! link htmlBold Normal
hi! link htmlString Function
hi! link htmlLink Function

" XML
hi! link xmlString Function
hi! link xmlAttrib Statement
hi! link xmlTagName Statement

" CSS
hi! link cssProp Normal
" flex, center, pointer, auto
hi! link cssAttr Normal
hi! link cssClassName Function
hi! link cssPseudoClass Function

" SCSS/SASS
hi! link scssSelectorName Function

" Typescript
" import ... from
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typeScriptCastKeyword Keyword
hi! link typeScriptCastObjectLiteral Keyword
hi! link typeScriptDecorator PreProc
hi! link typeScriptTemplateSB Normal
hi! link typeScriptArrowFuncDef Function
hi! link typeScriptArrowFuncArg Normal
hi! link typeScriptArrowFunc Normal
hi! link typescriptVariableDeclaration Normal
" Different from Function
hi! link typeScriptFuncName Function
"highlight typescriptFuncName guifg=magenta guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi! link typeScriptFuncCallArg Normal
hi! link typescriptDocNotation typescriptDocTags
hi! link typescriptDocNamedParamType typescriptDocComment
hi! link typescriptDocParamType typescriptDocComment
hi! link typescriptBOMNavigatorProp Function
hi! link typeScriptConstructor Keyword
hi! link typeScriptDestructureVariable Normal
hi! link typeScriptComputeMember Function
hi! link typeScriptProp Normal
hi! link typescriptNull Keyword
hi! link typescriptInterfaceName Identifier
hi! link typescriptUnion Normal
hi! link typescriptLabel Function
hi! link typescriptMember Normal
hi! link typescriptPaymentShippingOptionProp Normal
hi! link typeScriptDOMFormProp typescriptLabel
hi! link typeScriptBOMWindowProp Normal
"call s:Hi('typescriptLabel', s:p.cStructField, s:p.null,'')
hi! link typeScriptCall Normal
hi! link typeScriptPreProc typescriptLabel
hi! link typeScriptFunctionCall Function
hi! link typescriptObjectLiteral Normal
hi! link typescriptObjectMethod Function
hi! link typeScriptObjectLabel typescriptLabel
hi! link typeScriptFunction Function
hi! link typeScriptOptionalMark Normal
"call s:Hi('typescriptBoolean', s:p.keyword, s:p.null,'')
hi! link typeScriptReserved Keyword
" const
hi! link typeScriptVariable Keyword
hi! link typeScriptIdentifier Keyword
hi! link typescriptBraces NormalFg
hi! link typescriptDocComment docComment
hi! link typescriptDocParam docComment
" ( and )
hi! link typescriptParens NormalFg
hi! link typescriptOpSymbols Constant
hi! link typescriptRegexpString Number
hi! link typescriptSpecial Keyword
hi! link typescriptLogicSymbols Constant
hi! link typescriptExceptions Keyword
"call s:Hi('typescriptDocTags', s:p.docComment, s:p.null, 'bold,italic,underline')
"call s:Hi('typescriptGlobalObjects', s:p.tsObject)
