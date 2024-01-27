set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif


let g:colors_name="calm-dark"

let s:mono0 = "black"
let s:mono1 = "black"
let s:mono2 = "#686868"
let s:mono3 = "#878787"
let s:mono4 = "#a3a3a3"
let s:mono5_ = "#bfb8aa"
let s:mono5 = "#ada79c"
let s:mono5_ = "#b8b0a1"
let s:red0 = "#9e4444"
let s:yellow0 = "#b5a387"
let s:yellow1 = "#a7957a"
let s:yellow2 = "#dfaf87"
let s:yellow3 = "#af5f00"
let s:yellow4 = "#af875f"
let s:yellow5 = "#AA8F72"
let s:yellow6 = "#7c7262"
let s:green0 = "green"
let s:blue0 = "blue"
let s:orange0 = "orange"

highlight Test guifg=green guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE

" {{{ Highlight function (based on OceanicNext colorscheme)
function! s:hi(group, fg)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg
  endif
endfunction
" }}}


" COMMON
call s:hi('Function', s:mono5)
call s:hi('Normal', s:mono5)
call s:hi('String', s:mono5)
call s:hi('Number', s:mono5)
call s:hi('Statement', s:mono5)
call s:hi('Identifier', s:mono5)
call s:hi('Boolean', s:mono5)
call s:hi('Type', s:mono5)
call s:hi('Comment', s:mono2)
call s:hi('Keyword', s:mono5)
call s:hi('Include', s:mono5)
" ${expr}
call s:hi('Special', s:mono5)
call s:hi('Macro', s:mono5)

" vim
call s:hi('vimOption', s:mono5)
call s:hi('vimEchoHLNone', s:mono5)
call s:hi('vimHiAttrib', s:mono5)
call s:hi('vimEnvvar', s:mono5)

" JS
call s:hi('javaScriptFunctionName', s:red0)
call s:hi('javaScriptClassName', s:red0)
call s:hi('inner', s:red0)
call s:hi('jsClassFuncName', s:yellow3)
call s:hi('jsClassMethodType', s:red0)
call s:hi('javascriptMethodName', s:yellow3)
call s:hi('jsObjectFuncName', s:yellow3)
call s:hi('jsBlock', s:mono5)
call s:hi('jsBraces', s:mono5)
call s:hi('jsClassFnReg', s:green0)
call s:hi('jsClassFn', s:red0)
call s:hi('jsClassAsyncFn', s:red0)
call s:hi('jsClassArrowFn', s:red0)
call s:hi('jsFnArgs', s:mono5)
call s:hi('jsFnParens', s:mono5)
call s:hi('jsObjectComputedPropArrow', s:red0)
call s:hi('jsObjectComputedPropExpr', s:red0)
call s:hi('jsObjectComputedPropExprFn', 'yellow')
call s:hi('jsObjectComputedPropES6', 'lightblue')
call s:hi('jsIf', s:mono5)
call s:hi('jsFor', s:mono5)
call s:hi('jsFnName', s:red0)
call s:hi('jsClassName', s:red0)
call s:hi('jsComment', s:mono2)
call s:hi('jsCommentLine', s:mono2)

" HTML
let g:html_no_rendering='1'
call s:hi('htmlComment', s:mono2)

" CSS
call s:hi('cssUIAttr', s:mono5)
call s:hi('cssPseudoClassId', s:mono5)
" mincss
call s:hi('cssSelector', s:red0)

" Python
call s:hi('pythonFunction', s:red0)
call s:hi('pythonDecorator', s:mono5)

" Rust
call s:hi('rustFuncName', s:red0)
call s:hi('rustFuncCall', s:mono5)
call s:hi('rustModPath', s:mono5)
call s:hi('rustMacro', s:mono5)
call s:hi('rustNumber', s:mono5)
call s:hi('rustStorage', s:mono5)
call s:hi('rustEnumVariant', s:mono5)
call s:hi('rustEnum', s:mono5)
" Result
call s:hi('rustKeyword', s:mono5)
" &
call s:hi('rustSigil', s:mono5)
" String
call s:hi('rustTrait', s:mono5)
" i32
call s:hi('rustType', s:mono5)
call s:hi('rustSelf', s:mono5)
" 'derive' in '#[derive(Debug)]'
call s:hi('rustDerive', s:mono5)
" '[#' and ']' in '#[derive(Debug)]'
call s:hi('rustAttribute', s:mono5)
" 'struct' word
call s:hi('rustStructure', s:mono5)

" minrust:
call s:hi('rustStructName', s:red0)
call s:hi('rustCommentLine', s:mono2)

" common
call s:hi('commonComment', s:mono2)
call s:hi('commonFuncName', s:red0)
call s:hi('commonClassName', s:red0)


"WINDOW UI
highlight MoreMsg guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight VimCommentTitle guifg=#87875f guibg=NONE gui=reverse ctermfg=101 ctermbg=NONE cterm=reverse
highlight SpecialComment guifg=#87875f guibg=NONE gui=reverse ctermfg=101 ctermbg=NONE cterm=reverse
highlight Underlined guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Todo guifg=#af5f00 guibg=NONE gui=reverse ctermfg=130 ctermbg=NONE cterm=reverse
highlight Visual guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight Question guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight Search guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight MatchParen guifg=white guibg=black gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Error guifg=#af5f5f guibg=#121212 gui=reverse ctermfg=131 ctermbg=233 cterm=reverse
highlight ErrorMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight WarningMsg guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Directory guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight Cursor guifg=#000000 guibg=#dfdfaf gui=NONE ctermfg=16 ctermbg=187 cterm=NONE
highlight CursorLineNR guifg=#878787 guibg=NONE gui=reverse ctermfg=102 ctermbg=NONE cterm=reverse
highlight WildMenu guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight ModeMsg guifg=#dfdfaf guibg=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
highlight PreCondit guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight IncSearch guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

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

