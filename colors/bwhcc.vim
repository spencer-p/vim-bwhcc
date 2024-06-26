
if !has("gui_running")
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-material-darker.sh"
  endif
endif

hi clear
syntax reset
let g:colors_name = 'bwhcc'

" GUI color definitions
let s:gui00        = "212121"
let g:base16_gui00 = "212121"
let s:gui01        = "303030"
let g:base16_gui01 = "303030"
let s:gui02        = "353535"
let g:base16_gui02 = "353535"
let s:gui03        = "4A4A4A"
let g:base16_gui03 = "4A4A4A"
let s:gui04        = "B2CCD6"
let g:base16_gui04 = "B2CCD6"
let s:gui05        = "EEFFFF"
let g:base16_gui05 = "EEFFFF"
let s:gui06        = "EEFFFF"
let g:base16_gui06 = "EEFFFF"
let s:gui07        = "FFFFFF"
let g:base16_gui07 = "FFFFFF"
let s:gui08        = "F07178"
let g:base16_gui08 = "F07178"
let s:gui09        = "F78C6C"
let g:base16_gui09 = "F78C6C"
let s:gui0A        = "FFCB6B"
let g:base16_gui0A = "FFCB6B"
let s:gui0B        = "C3E88D"
let g:base16_gui0B = "C3E88D"
let s:gui0C        = "89DDFF"
let g:base16_gui0C = "89DDFF"
let s:gui0D        = "82AAFF"
let g:base16_gui0D = "82AAFF"
let s:gui0E        = "C792EA"
let g:base16_gui0E = "C792EA"
let s:gui0F        = "FF5370"
let g:base16_gui0F = "FF5370"

" Terminal color definitions
let s:cterm00        = "00"
let g:base16_cterm00 = "00"
let s:cterm03        = "08"
let g:base16_cterm03 = "08"
let s:cterm05        = "07"
let g:base16_cterm05 = "07"
let s:cterm07        = "15"
let g:base16_cterm07 = "15"
let s:cterm08        = "01"
let g:base16_cterm08 = "01"
let s:cterm0A        = "03"
let g:base16_cterm0A = "03"
let s:cterm0B        = "02"
let g:base16_cterm0B = "02"
let s:cterm0C        = "06"
let g:base16_cterm0C = "06"
let s:cterm0D        = "04"
let g:base16_cterm0D = "04"
let s:cterm0E        = "05"
let g:base16_cterm0E = "05"

if exists("base16colorspace") && base16colorspace == "256"
  let s:cterm01        = "18"
  let g:base16_cterm01 = "18"
  let s:cterm02        = "19"
  let g:base16_cterm02 = "19"
  let s:cterm04        = "20"
  let g:base16_cterm04 = "20"
  let s:cterm06        = "21"
  let g:base16_cterm06 = "21"
  let s:cterm09        = "16"
  let g:base16_cterm09 = "16"
  let s:cterm0F        = "17"
  let g:base16_cterm0F = "17"
else
  let s:cterm01        = "10"
  let g:base16_cterm01 = "10"
  let s:cterm02        = "11"
  let g:base16_cterm02 = "11"
  let s:cterm04        = "12"
  let g:base16_cterm04 = "12"
  let s:cterm06        = "13"
  let g:base16_cterm06 = "13"
  let s:cterm09        = "09"
  let g:base16_cterm09 = "09"
  let s:cterm0F        = "14"
  let g:base16_cterm0F = "14"
endif

if has("terminal")
  let g:terminal_ansi_colors = [
        \ "#212121",
        \ "#F07178",
        \ "#C3E88D",
        \ "#FFCB6B",
        \ "#82AAFF",
        \ "#C792EA",
        \ "#89DDFF",
        \ "#EEFFFF",
        \ "#4A4A4A",
        \ "#F07178",
        \ "#C3E88D",
        \ "#FFCB6B",
        \ "#82AAFF",
        \ "#C792EA",
        \ "#89DDFF",
        \ "#FFFFFF",
        \ ]
endif

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
  let l:attr = get(a:, 1, "")
  let l:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if l:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if l:guisp != ""
    exec "hi " . a:group . " guisp=#" . l:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",        s:gui05,  s:gui00,  s:cterm05,  s:cterm00,  "",      "")
call <sid>hi("Bold",          "",       "",       "",         "",         "bold",  "")
call <sid>hi("Debug",         s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Directory",     s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Error",         s:gui00,  s:gui05,  s:cterm00,  s:cterm05,  "",      "")
call <sid>hi("ErrorMsg",      s:gui05,  s:gui00,  s:cterm05,  s:cterm00,  "",      "")
call <sid>hi("Exception",     s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("FoldColumn",    s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",      "")
call <sid>hi("Folded",        s:gui00,  s:gui01,  s:cterm00,  s:cterm01,  "",      "")
call <sid>hi("IncSearch",     s:gui01,  s:gui0A,  s:cterm01,  s:cterm0A,  "bold",  "")
call <sid>hi("Italic",        "",       "",       "",         "",         "none",  "")
call <sid>hi("Macro",         s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("matchParen",    s:gui00,  s:gui06,  s:cterm00,  s:cterm06,  "",      "")
call <sid>hi("ModeMsg",       s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("MoreMsg",       s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Question",      s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Search",        s:gui01,  s:gui0A,  s:cterm01,  s:cterm0A,  "",      "")
call <sid>hi("Substitute",    s:gui01,  s:gui0A,  s:cterm01,  s:cterm0A,  "none",  "")
call <sid>hi("SpecialKey",    s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("TooLong",       s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Underlined",    s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("Visual",        "",       s:gui03,  "",         s:cterm03,  "",      "")
call <sid>hi("VisualNOS",     s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("WarningMsg",    s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("WildMenu",      s:gui00,  s:gui05,  s:cterm00,  s:cterm05,  "bold",  "")
call <sid>hi("Title",         s:gui05,  "",       s:cterm05,  "",         "bold",  "")
call <sid>hi("Conceal",       s:gui05,  s:gui00,  s:cterm05,  s:cterm00,  "",      "")
call <sid>hi("Cursor",        s:gui05,  s:gui00,  s:cterm05,  s:cterm00,  "",      "")
call <sid>hi("NonText",       s:gui05,  "",       s:cterm05,  "",         "",      "")
call <sid>hi("LineNr",        s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",      "")
call <sid>hi("SignColumn",    s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",      "")
call <sid>hi("StatusLine",    s:gui05,  s:gui03,  s:cterm05,  s:cterm03,  "none",  "")
call <sid>hi("StatusLineNC",  s:gui05,  s:gui02,  s:cterm05,  s:cterm02,  "none",  "")
call <sid>hi("VertSplit",     s:gui05,  s:gui03,  s:cterm05,  s:cterm03,  "none",  "")
call <sid>hi("ColorColumn",   "",       s:gui01,  "",         s:cterm01,  "none",  "")
call <sid>hi("CursorColumn",  "",       s:gui01,  "",         s:cterm01,  "none",  "")
call <sid>hi("CursorLine",    "",       s:gui01,  "",         s:cterm01,  "none",  "")
call <sid>hi("CursorLineNr",  s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",      "")
call <sid>hi("QuickFixLine",  "",       s:gui01,  "",         s:cterm01,  "none",  "")
call <sid>hi("PMenu",         s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "none",  "")
call <sid>hi("PMenuSel",      s:gui05,  s:gui03,  s:cterm05,  s:cterm03,  "",      "")
call <sid>hi("TabLine",       s:gui01,  s:gui05,  s:cterm01,  s:cterm05,  "none",  "")
call <sid>hi("TabLineFill",   s:gui01,  s:gui05,  s:cterm01,  s:cterm05,  "none",  "")
call <sid>hi("TabLineSel",    s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "none",  "")

" Standard syntax highlighting
call <sid>hi("Boolean",       s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Character",     s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Comment",       s:gui0A,  s:gui00,  s:cterm0A,  s:cterm00,  "bold",        "")
call <sid>hi("Conditional",   s:gui05,  "",       s:cterm05,  "",         "bold",        "")
call <sid>hi("Constant",      s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Define",        s:gui05,  "",       s:cterm05,  "",         "none",        "")
call <sid>hi("Delimiter",     s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Float",         s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Function",      s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Identifier",    s:gui05,  "",       s:cterm05,  "",         "none",        "")
call <sid>hi("Include",       s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Keyword",       s:gui05,  "",       s:cterm05,  "",         "bold",        "")
call <sid>hi("Label",         s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Number",        s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Operator",      s:gui05,  "",       s:cterm05,  "",         "none",        "")
call <sid>hi("PreProc",       s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Repeat",        s:gui05,  "",       s:cterm05,  "",         "bold",        "")
call <sid>hi("Special",       s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("SpecialChar",   s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Statement",     s:gui05,  "",       s:cterm05,  "",         "bold",        "")
call <sid>hi("StorageClass",  s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("String",        s:gui05,  "",       s:cterm05,  "",         "italic",      "")
call <sid>hi("Structure",     s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Tag",           s:gui05,  "",       s:cterm05,  "",         "",            "")
call <sid>hi("Todo",          s:gui01,  s:gui0A,  s:cterm01,  s:cterm0A,  "bolditalic",  "")
call <sid>hi("Type",          s:gui05,  "",       s:cterm05,  "",         "none",        "")
call <sid>hi("Typedef",       s:gui05,  "",       s:cterm05,  "",         "",            "")

" C highlighting
call <sid>hi("cOperator",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("cPreCondit",  s:gui05, "", s:cterm05, "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csAttribute",             s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csModifier",              s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csType",                  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csContextualStatement",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("csNewDecleration",        s:gui05, "", s:cterm05, "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("cssClassName",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("cssColor",       s:gui05, "", s:cterm05, "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui05, s:gui01,  s:cterm05, s:cterm01, "", "")
call <sid>hi("DiffChange",   s:gui05, s:gui01,  s:cterm05, s:cterm01, "", "")
call <sid>hi("DiffDelete",   s:gui05, s:gui01,  s:cterm05, s:cterm01, "", "")
call <sid>hi("DiffText",     s:gui05, s:gui01,  s:cterm05, s:cterm01, "", "")
call <sid>hi("DiffAdded",    s:gui05, s:gui00,  s:cterm05, s:cterm00, "", "")
call <sid>hi("DiffFile",     s:gui05, s:gui00,  s:cterm05, s:cterm00, "", "")
call <sid>hi("DiffNewFile",  s:gui05, s:gui00,  s:cterm05, s:cterm00, "", "")
call <sid>hi("DiffLine",     s:gui05, s:gui00,  s:cterm05, s:cterm00, "", "")
call <sid>hi("DiffRemoved",  s:gui05, s:gui00,  s:cterm05, s:cterm00, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       s:gui05, "", s:cterm05, "", "undercurl", s:gui0A)
call <sid>hi("gitcommitSummary",        s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitComment",        s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitUntracked",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitSelected",       s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitHeader",         s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitBranch",         s:gui05, "", s:cterm05, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:gui05, "", s:cterm05, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:gui05, "", s:cterm05, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:gui05, "", s:cterm05, "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",           s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",  "")
call <sid>hi("GitGutterChange",        s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",  "")
call <sid>hi("GitGutterDelete",        s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",  "")
call <sid>hi("GitGutterChangeDelete",  s:gui05,  s:gui01,  s:cterm05,  s:cterm01,  "",  "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("htmlItalic",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptNumber",  s:gui05, "", s:cterm05, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsStatement",         s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsReturn",            s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsThis",              s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsClassDefinition",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsFunction",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsFuncName",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsFuncCall",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsClassFuncName",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsClassMethodType",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsRegexpString",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsGlobalObjects",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsGlobalNodeObjects", s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsExceptions",        s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("jsBuiltins",          s:gui05, "", s:cterm05, "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailQuoted2",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailQuoted3",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailQuoted4",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailQuoted5",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailQuoted6",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailURL",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("mailEmail",    s:gui05, "", s:cterm05, "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui05,  "",       s:cterm05,  "",         "",  "")
call <sid>hi("markdownError",             s:gui05,  s:gui00,  s:cterm05,  s:cterm00,  "",  "")
call <sid>hi("markdownCodeBlock",         s:gui05,  "",       s:cterm05,  "",         "",  "")
call <sid>hi("markdownHeadingDelimiter",  s:gui05,  "",       s:cterm05,  "",         "",  "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpMethodsVar",      s:gui05, "", s:cterm05, "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("pythonRepeat",    s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("pythonInclude",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("pythonStatement", s:gui05, "", s:cterm05, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("rubyConstant",                s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("rubyRegexp",                  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("rubySymbol",                  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("rubyStringDelimiter",         s:gui05, "", s:cterm05, "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("sassClassChar",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("sassInclude",    s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("sassMixing",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("sassMixinName",  s:gui05, "", s:cterm05, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui05, s:gui01, s:cterm05, s:cterm01, "", "")
call <sid>hi("SignifySignChange",  s:gui05, s:gui01, s:cterm05, s:cterm01, "", "")
call <sid>hi("SignifySignDelete",  s:gui05, s:gui01, s:cterm05, s:cterm01, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", s:cterm08, "undercurl", s:gui08)
call <sid>hi("SpellLocal",   "", "", "", s:cterm08, "undercurl", s:gui0C)
call <sid>hi("SpellCap",     "", "", "", s:cterm08, "undercurl", s:gui0D)
call <sid>hi("SpellRare",    "", "", "", s:cterm08, "undercurl", s:gui0E)

" Startify highlighting
call <sid>hi("StartifyBracket",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifyFile",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifyFooter",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifyHeader",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifyNumber",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifyPath",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifySection",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifySelect",   s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifySlash",    s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("StartifySpecial",  s:gui05, "", s:cterm05, "", "", "")

" Java highlighting
call <sid>hi("javaOperator",     s:gui05, "", s:cterm05, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
