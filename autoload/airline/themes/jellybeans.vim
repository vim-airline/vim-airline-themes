" Color palette
let s:gui00 = "#151515"
let s:gui01 = "#262626"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#cdd3de"
let s:gui07 = "#d8dee9"
let s:gui08 = "#870000"
let s:gui09 = "#f99157"
let s:gui0A = "#fac863"
let s:gui0B = "#437019"
let s:gui0C = "#5fb3b3"
let s:gui0D = "#0d61ac"
let s:gui0E = "#c594c5"
let s:gui0F = "#ab7967"

let s:cterm00 = "234"
let s:cterm01 = "235"
let s:cterm02 = "239"
let s:cterm03 = "59"
let s:cterm04 = "145"
let s:cterm05 = "152"
let s:cterm06 = "188"
let s:cterm07 = "195"
let s:cterm08 = "88"
let s:cterm09 = "209"
let s:cterm0A = "221"
let s:cterm0B = "28"
let s:cterm0C = "73"
let s:cterm0D = "25"
let s:cterm0E = "176"
let s:cterm0F = "137"

let s:guiWhite = "#ffffff"
let s:ctermWhite = "15"

let g:airline#themes#jellybeans#palette = {}

" mimicking jellybeans.vim
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  let s:G2 = [ "#A0A8B0", "#384048", "145", "236" ]
  let s:G3 = [ "#606060", "#151515", "240", "16" ]
  let s:N1 = [ "#DEEBFE", "#345FA8", "195", "25" ]
  let s:I1 = [ "#D2EBBE", "#437019", "193", "22" ]
  let s:V1 = [ "#f0f0f0", "#700009", "254", "52" ]
  let s:R1 = [ "#f0a0c0", "#302028", "217", "16" ]
else
  let s:G2 = [ "#A0A8B0", "#384048",  "15",  "4" ]
  let s:G3 = [ "#606060", "#151515", "240", "16" ]
  let s:N1 = [ "#DEEBFE", "#345FA8",  "15",  "4" ]
  let s:I1 = [ "#D2EBBE", "#437019", "193", "22" ]
  let s:V1 = [ "#f0f0f0", "#700009", "254", "52" ]
  let s:R1 = [ "#f0a0c0", "#302028", "217", "16" ]
endif

let s:modified = {
        \ 'airline_c': [ '#ffb964', '', 215, '', '' ]
        \ }

" Normal mode
let g:airline#themes#jellybeans#palette.normal = airline#themes#generate_color_map(s:N1, s:G2, s:G3)
let g:airline#themes#jellybeans#palette.normal_modified = s:modified

" Insert mode
let g:airline#themes#jellybeans#palette.insert = airline#themes#generate_color_map(s:I1, s:G2, s:G3)
let g:airline#themes#jellybeans#palette.insert_modified = s:modified

" Visual mode
let g:airline#themes#jellybeans#palette.visual = airline#themes#generate_color_map(s:V1, s:G2, s:G3)
let g:airline#themes#jellybeans#palette.visual_modified = s:modified

" Replace mode
let g:airline#themes#jellybeans#palette.replace = airline#themes#generate_color_map(s:R1, s:G2, s:G3)
let g:airline#themes#jellybeans#palette.replace_modified = s:modified

" let s:gui00 = "#151515"
" let s:gui01 = "#262626"
" let s:gui02 = "#4f5b66"
let s:cterm00 = "234"
let s:cterm01 = "235"
let s:cterm02 = "239"
" Inactive mode
let s:IN1 = [ "#767686" , "#262626" , 243 , 235 ]
let s:IN2 = [ "#606070" , "#1c1c1c" , 241 , 234 ]
let s:IN3 = [ "#4e4e5e" , "#121212" , 239 , 233 ]
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
