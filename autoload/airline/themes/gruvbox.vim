" Color palette
let s:gui00 = "#1d2021"
let s:gui01 = "#32302f"
let s:gui02 = "#3c3836"
let s:gui03 = "#65737e"
let s:gui04 = "#504945"
let s:gui05 = "#665c54"
let s:gui06 = "#7c6f64"
let s:gui07 = "#897d73"
let s:gui08 = "#cc241d"
let s:gui09 = "#fe8019"
let s:gui0A = "#fabd2f"
let s:gui0B = "#b8bb26"
let s:gui0C = "#83a598"
let s:gui0D = "#458588"
let s:gui0E = "#d3869b"
let s:gui0F = "#b57614"

let s:cterm00 = "233"
let s:cterm01 = "235"
let s:cterm02 = "59"
let s:cterm03 = "66"
let s:cterm04 = "145"
let s:cterm05 = "152"
let s:cterm06 = "188"
let s:cterm07 = "189"
let s:cterm08 = "88"
let s:cterm09 = "209"
let s:cterm0A = "221"
let s:cterm0B = "22"
let s:cterm0C = "73"
let s:cterm0D = "25"
let s:cterm0E = "176"
let s:cterm0F = "137"

let s:guiWhite = "#f9f5d7"
let s:guiGray = "#928374"
let s:ctermWhite = "231"
let s:ctermGray = "243"

let g:airline#themes#jellybeans#palette = {}
let s:modified = { 'airline_c': [ '#fe8019', '', 215, '', '' ] }

" Normal mode
let s:N1 = s:N2
let s:N2 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
let s:N3 = s:N2
let g:airline#themes#jellybeans#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#jellybeans#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:guiWhite , s:gui0B , s:ctermWhite , s:cterm0B  ]
let s:I2 = s:N2
let s:I3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm00  ]
let g:airline#themes#jellybeans#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jellybeans#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:guiWhite , s:gui08 , s:ctermWhite , s:cterm08 ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#jellybeans#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jellybeans#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui08 , s:gui01 , s:cterm08, s:cterm00 ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#jellybeans#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#jellybeans#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiGray , s:gui01 , s:ctermGray , s:cterm01 ]
let s:IN2 = [ s:gui02 , s:gui00 , s:cterm02 , s:cterm00 ]
let s:IN3 = [ s:gui02 , s:gui00 , s:cterm02 , s:cterm00 ]
let g:airline#themes#jellybeans#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#jellybeans#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
let s:CP2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm01  ]
let s:CP3 = [ s:guiWhite , s:gui0D , s:ctermWhite , s:cterm0D  ]

let g:airline#themes#jellybeans#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
