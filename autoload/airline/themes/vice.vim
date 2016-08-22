let g:airline#themes#vice#palette = {}

" Color definitions
let s:white = [231, "#ffffff"]
let s:grey0 = [102, "#878787"] "lightest grey
let s:grey1 = [238, "#444444"] "mid grey
let s:grey2 = [235, "#303030"] "darkest grey

let s:pink = [212, "#ff87d7"]
let s:light_pink = [218, "#ffafdf"]
let s:hot_pink = [201, "#ff00ff" ]

let s:red = [197, "#ff005f" ]

let s:teal = [123, "#87ffff"]
let s:light_blue = [159, "#afffff"]

let s:light_yellow = [229, "#ffffaf"]

let s:mint = [158, "#afffd7"]
let s:dark_mint = [49, "#87af87"]

let s:lavender = [183, "#dfafff"]
let s:gray_purple = [146, "#afafd7"]
let s:dark_lavender = [97, "#875faf"]

let g:airline#themes#vice#palette = {}
let s:modified = { 'airline_c': s:MakeCol(s:dark_mint, s:grey2) }

function! s:MakeCol(fg, bg)
  return [ a:fg[1], a:bg[1], a:fg[0], a:bg[0] ]
endfun

" Normal mode
let s:N1 = s:MakeCol(s:grey1, s:teal)
let s:N2 = s:MakeCol(s:white, s:grey2)
let s:N3 = s:MakeCol(s:mint, s:grey2)
let g:airline#themes#vice#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#vice#palette.normal_modified = s:modified

" Insert mode
let s:I1 = s:MakeCol(s:grey1, s:mint)
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#vice#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#vice#palette.insert_modified = s:modified

" Visual mode
let s:V1 = s:MakeCol(s:grey1, s:pink)
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#vice#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#vice#palette.visual_modified = s:modified

" Replace mode
let s:R1 = s:MakeCol(s:hot_pink, s:grey2)
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#vice#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#vice#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = s:MakeCol(s:grey0, s:grey1)
let s:IN2 = s:MakeCol(s:grey0, s:grey1)
let s:IN3 = s:MakeCol(s:grey0, s:grey1)
let g:airline#themes#vice#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#vice#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = s:MakeCol(s:white, s:grey1)
let s:CP2 = s:MakeCol(s:white, s:grey1)
let s:CP3 = s:MakeCol(s:white, s:grey1)

let g:airline#themes#vice#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
