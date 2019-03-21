" Vim Airline theme.
"
" Repository: https://github.com/idlua/badcat
" Author:     Luan Vicente <hi[at]idlua.me>


" COLOR PALETTE -------------------------------------------------------------{{{
let g:airline#themes#badcat#palette = {}

let s:guiBlack       = "#080808"
let s:guiGray        = "#262626"
let s:guiLightgray   = "#6c6c6c"
let s:guiWhite       = "#e4e4e4"
let s:guiRed         = "#ff5f5f"
let s:guiGreen       = "#afd787"
let s:guiBlue        = "#5fafd7"
let s:guiOrange      = "#ffaf5f"

let s:ctermBlack     = "232"
let s:ctermGray      = "235"
let s:ctermLightgray = "242"
let s:ctermWhite     = "254"
let s:ctermRed       = "203"
let s:ctermGreen     = "150"
let s:ctermBlue      = "074"
let s:ctermOrange    = "215"
" }}}
" BASICS --------------------------------------------------------------------{{{
let s:modified = { 'airline_c': [ '#ffb964', '', s:ctermRed, '', '' ] }
" }}}


" MODES SUPPORT
" NORMAL MODE ---------------------------------------------------------------{{{
let s:N1 = [ s:guiWhite     , s:guiBlack , s:ctermWhite     , s:ctermGray ]
let s:N2 = [ s:guiLightgray , s:guiGray  , s:ctermLightgray , s:ctermGray  ]
let s:N3 = [ s:guiWhite     , s:guiBlack , s:ctermWhite     , s:ctermBlack ]
let g:airline#themes#badcat#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#badcat#palette.normal_modified = s:modified
" }}}
" INSERT MODE ---------------------------------------------------------------{{{
let s:I1 = [ s:guiGreen , s:guiBlack , s:ctermGreen , s:ctermBlack ]
let s:I2 = [ s:guiBlack , s:guiGreen , s:ctermBlack , s:ctermGreen ]
let s:I3 = [ s:guiGreen , s:guiBlack , s:ctermGreen , s:ctermBlack ]
let g:airline#themes#badcat#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#badcat#palette.insert_modified = s:modified
" }}}
" VISUAL MODE ---------------------------------------------------------------{{{
let s:V1 = [ s:guiBlue  , s:guiBlack , s:ctermBlue  , s:ctermBlack ]
let s:V2 = [ s:guiBlack , s:guiBlue  , s:ctermBlack , s:ctermBlue  ]
let s:V3 = [ s:guiBlue  , s:guiBlack , s:ctermBlue  , s:ctermBlack ]
let g:airline#themes#badcat#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#badcat#palette.visual_modified = s:modified
" }}}
" REPLACE MODE --------------------------------------------------------------{{{
let s:R1 = [ s:guiOrange , s:guiBlack  , s:ctermOrange , s:ctermBlack  ]
let s:R2 = [ s:guiBlack  , s:guiOrange , s:ctermBlack  , s:ctermOrange ]
let s:R3 = [ s:guiOrange , s:guiBlack  , s:ctermOrange , s:ctermBlack  ]
let g:airline#themes#badcat#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#badcat#palette.replace_modified = s:modified
" }}}
" INACTIVE MODE -------------------------------------------------------------{{{
let s:IN1 = [ s:guiBlack     , s:guiGray  , s:ctermBlack      , s:ctermGray  ]
let s:IN2 = [ s:guiLightgray , s:guiBlack , s:ctermLightgray , s:ctermBlack ]
let s:IN3 = [ s:guiLightgray , s:guiBlack , s:ctermLightgray , s:ctermBlack ]
let g:airline#themes#badcat#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#badcat#palette.inactive_modified = s:modified
" }}}


" SPECIFIC PLUGIN SUPPORT
" CtrlP ---------------------------------------------------------------------{{{
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:guiGray , s:ctermWhite , s:ctermGray  ]
let s:CP2 = [ s:guiWhite , s:guiGray , s:ctermWhite , s:ctermGray  ]
let s:CP3 = [ s:guiWhite , s:guiBlack , s:ctermWhite , s:ctermBlack ]

let g:airline#themes#badcat#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
" }}}
