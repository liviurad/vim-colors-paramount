" Vim Paramount (airline theme)
" https://github.com/liviurad/vim-colors-paramount

scriptencoding utf-8

let g:airline#themes#paramount#palette = {}
let s:gui_black = "#1d1f21"
let s:cterm_black = "0"
let s:gui_light_white = '#ffffff'
let s:cterm_light_white = '15'
let s:gui_blue = "#5f819d"
let s:cterm_blue = "4"
let s:gui_light_blue = "#81a2be"
let s:cterm_light_blue = "12"
let s:gui_red = "#a54242"
let s:cterm_red = "1"
let s:gui_light_red = "#cc6666"
let s:cterm_light_red = "9"
let s:gui_yellow = "#de935f"
let s:cterm_yellow = "3"
let s:gui_light_yellow = "#f0c674"
let s:cterm_light_yellow = "11"
let s:gui_purple = "#85678f"
let s:cterm_purple = "5"

let s:WARN = [ s:gui_light_white, s:gui_red, s:cterm_light_white, s:cterm_red, 'none' ]
let s:ERR  = [ s:gui_light_white, s:gui_red, s:cterm_light_white, s:cterm_red, 'none' ]

let s:N1 = [ s:gui_light_white, s:gui_blue, s:cterm_light_white, s:cterm_blue, 'none' ]
let s:N2 = s:N1
let s:N3 = [ s:gui_light_white, s:gui_light_blue, s:cterm_light_white, s:cterm_light_blue, 'none' ]
let g:airline#themes#paramount#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#paramount#palette.normal_modified = {
      \ 'airline_c': [ s:gui_black, s:gui_light_yellow, s:cterm_black, s:cterm_light_yellow, 'none' ],
      \ }


let s:I1 = [ s:gui_black, s:gui_light_yellow, s:cterm_black, s:cterm_light_yellow, 'none' ]
let s:I2 = s:I1
let s:I3 = s:I1
let g:airline#themes#paramount#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#paramount#palette.insert_modified = {
      \ 'airline_c': [ s:gui_black, s:gui_light_yellow, s:cterm_black, s:cterm_light_yellow, 'none' ],
      \ }


let s:R1 = [ s:gui_light_white, s:gui_red, s:cterm_light_white, s:cterm_red, 'none' ]
let s:R2 = s:R1
let s:R3 = s:R1
let g:airline#themes#paramount#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)


let s:V1 = [ s:gui_light_white, s:gui_purple, s:cterm_light_white, s:cterm_purple, 'none' ]
let s:V2 = s:V1
let s:V3 = s:V1
let g:airline#themes#paramount#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)


let s:IA1 = [ '#666666' , '#b2b2b2' , 242 , 249 , '' ]
let s:IA2 = [ '#8a8a8a' , '#d0d0d0' , 245 , 252 , '' ]
let s:IA3 = [ '#a8a8a8' , '#ffffff' , 248 , 255 , '' ]
let g:airline#themes#paramount#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#paramount#palette.inactive_modified = {
      \ 'airline_c': [ '#df0000', '', 160, '', '' ],
\ }

" Warnings
let g:airline#themes#paramount#palette.normal.airline_warning = s:WARN
let g:airline#themes#paramount#palette.normal_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.insert.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.insert_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.visual.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.replace.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

" Errors
let g:airline#themes#paramount#palette.normal.airline_error = s:ERR
let g:airline#themes#paramount#palette.normal_modified.airline_error =
    \ g:airline#themes#paramount#palette.normal.airline_error

let g:airline#themes#paramount#palette.insert.airline_error =
    \ g:airline#themes#paramount#palette.normal.airline_error

let g:airline#themes#paramount#palette.insert_modified.airline_error =
    \ g:airline#themes#paramount#palette.normal.airline_error

let g:airline#themes#paramount#palette.visual.airline_error =
    \ g:airline#themes#paramount#palette.normal.airline_error

let g:airline#themes#paramount#palette.replace.airline_error =
    \ g:airline#themes#paramount#palette.normal.airline_error
