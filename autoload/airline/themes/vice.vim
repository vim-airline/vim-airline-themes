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

let s:modified = { 'airline_c': [s:dark_mint[1], s:grey2[1], s:dark_mint[0], s:grey2[0] ] }

let g:airline#themes#vice#palette = {}
" Normal mode
let s:N1 = [s:grey1[1], s:teal[1], s:grey1[0], s:teal[0] ]
let s:N2 = [s:white[1], s:grey2[1], s:white[0], s:grey2[0] ]
let s:N3 = [s:mint[1], s:grey2[1], s:mint[0], s:grey2[0] ]
let g:airline#themes#vice#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#vice#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [s:grey1[1], s:mint[1], s:grey1[0], s:mint[0] ]
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#vice#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#vice#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [s:grey1[1], s:pink[1], s:grey1[0], s:pink[0] ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#vice#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#vice#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [s:hot_pink[1], s:grey2[1], s:hot_pink[0], s:grey2[0] ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#vice#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#vice#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [s:grey0[1], s:grey1[1], s:grey0[0], s:grey1[0] ]
let s:IN2 = [s:grey0[1], s:grey1[1], s:grey0[0], s:grey1[0] ]
let s:IN3 = [s:grey0[1], s:grey1[1], s:grey0[0], s:grey1[0] ]
let g:airline#themes#vice#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#vice#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [s:white[1], s:grey1[1], s:white[0], s:grey1[0] ]
let s:CP2 = [s:white[1], s:grey1[1], s:white[0], s:grey1[0] ]
let s:CP3 = [s:white[1], s:grey1[1], s:white[0], s:grey1[0] ]

let g:airline#themes#vice#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
