" Name:       paramount.vim
" Version:    0.1.4
" Maintainer: github.com/liviurad
" License:    The MIT License (MIT)
"
" Fork of paramount vim coloscheme:
"   A minimal colorscheme for Vim that only
"   puts emphasis on the paramount.
"
" Originally based on the pencil and off colorschemes:
"
" What I've changed:
"  * ephasises comments.
"  * some colors are modified to play well with my airline theme :)
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='paramount'

let s:none            = { "gui": "NONE",    "cterm": "NONE" }
let s:black           = { "gui": "#1d1f21", "cterm": "0"    }
let s:light_black     = { "gui": "#373b41", "cterm": "8"    }
let s:white           = { "gui": "#707880", "cterm": "7"    }
let s:light_white     = { "gui": "#f5f8f6", "cterm": "15"   }
let s:red             = { "gui": "#a54242", "cterm": "1"    }
let s:light_red       = { "gui": "#cc6666", "cterm": "9"    }
let s:blue            = { "gui": "#5f819d", "cterm": "4"    }
let s:light_blue      = { "gui": "#81a2be", "cterm": "12"   }
let s:cyan            = { "gui": "#5e8d87", "cterm": "6"    }
let s:light_cyan      = { "gui": "#8abeb7", "cterm": "14"   }
let s:green           = { "gui": "#8c9440", "cterm": "2"    }
let s:light_green     = { "gui": "#b5bd68", "cterm": "10"   }
let s:purple          = { "gui": "#85678f", "cterm": "5"    }
let s:light_purple    = { "gui": "#b294bb", "cterm": "13"   }
let s:yellow          = { "gui": "#de935f", "cterm": "3"    }
let s:light_yellow    = { "gui": "#f0c674", "cterm": "11"   }

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:white
  let s:norm            = s:light_white
  let s:norm_subtle     = s:light_blue
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:yellow          = s:light_yellow
  let s:visual          = s:light_purple
  let s:constant        = s:light_purple
else
  let s:bg              = s:light_white
  let s:bg_subtle       = s:white
  let s:norm            = s:black
  let s:norm_subtle     = s:blue
  let s:purple          = s:purple
  let s:cyan            = s:cyan
  let s:green           = s:green
  let s:red             = s:red
  let s:yellow          = s:yellow
  let s:visual          = s:purple
  let s:constant        = s:purple
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != s:background
   execute "set background=" . s:background
endif

call s:h("Cursor",        {"bg": s:purple, "fg": s:norm })
call s:h("Comment",       {"fg": s:cyan, "gui": "italic"})

call s:h("Constant",      {"fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Identifier",    {"fg": s:blue})
hi! link Identifier       Normal
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:norm_subtle})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",       {"fg": s:norm_subtle})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:norm})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:norm_subtle, "gui": "italic"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:light_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:red, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:white})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:light_yellow, "fg": s:black})
call s:h("Search",        {"bg": s:yellow, "fg": s:black})
call s:h("MoreMsg",       {"fg": s:norm, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:norm, "bg": s:bg})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg})
call s:h("StatusLineNC",  {"bg": s:bg, "fg": s:norm})
call s:h("VertSplit",     {"bg": s:norm, "fg": s:norm})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:bg, "bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:norm})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:blue})
call s:h("SignColumn",    {"fg": s:light_green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:purple})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:purple})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:bg, "bg": s:norm, "gui": "bold", "cterm": "bold"})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg})
call s:h("TabLineSel",    {"fg": s:purple, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg})
call s:h("CursorColumn",  {"bg": s:bg})
call s:h("CursorLine",    {"bg": s:bg})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:norm})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

" Neomake
hi link NeomakeWarningSign	SyntasticWarningSign
hi link NeomakeErrorSign	SyntasticErrorSign

" ALE
hi link ALEWarningSign	SyntasticWarningSign
hi link ALEErrorSign	SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              CursorLineNr
hi link SignifySignDelete           CursorLineNr
hi link SignifySignChange           CursorLineNr
hi link GitGutterAdd                CursorLineNr
hi link GitGutterDelete             CursorLineNr
hi link GitGutterChange             CursorLineNr
hi link GitGutterChangeDelete       CursorLineNr
