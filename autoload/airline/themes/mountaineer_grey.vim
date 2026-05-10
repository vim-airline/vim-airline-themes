" vim-airline theme based on mountaineer-grey colorscheme
" Template airline theme: base16_default.vim
" Original theme: https://github.com/rafi/awesome-vim-colorschemes/blob/master/colors/mountaineer-grey.vim

let g:airline#themes#mountaineer_grey#palette = {}
let s:gui00 = "#191919"
let s:gui01 = "#363636"
let s:gui02 = "#2f4243"
let s:gui03 = "#585858"
let s:gui04 = "#b8b8b8"
let s:gui05 = "#f0f0f0"
let s:gui06 = "#e8e8e8"
let s:gui07 = "#f8f8f8"
let s:gui08 = "#AC8A8C"
let s:gui09 = "#ACA98A"
let s:gui0A = "#ACA98A"
let s:gui0B = "#8AAC8B"
let s:gui0C = "#8AABAC"
let s:gui0D = "#8F8AAC"
let s:gui0E = "#AC8AAC"
let s:gui0F = "#AC9D8A"

let s:cterm00 = 233
let s:cterm01 = 236
let s:cterm02 = 238
let s:cterm03 = 240
let s:cterm04 = 249
let s:cterm05 = 255
let s:cterm06 = 254
let s:cterm07 = 15
let s:cterm08 = 138
let s:cterm09 = 144
let s:cterm0A = 144
let s:cterm0B = 108
let s:cterm0C = 109
let s:cterm0D = 103
let s:cterm0E = 139
let s:cterm0F = 137

let s:N1   = [ s:gui00, s:gui0B, s:cterm00, s:cterm0B ]
let s:N2   = [ s:gui05, s:gui02, s:cterm05, s:cterm02 ]
let s:N3   = [ s:gui0B, s:gui01, s:cterm0B, s:cterm01 ]
let g:airline#themes#mountaineer_grey#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui00, s:gui0D, s:cterm00, s:cterm0D ]
let s:I2   = [ s:gui05, s:gui02, s:cterm05, s:cterm02 ]
let s:I3   = [ s:gui0D, s:gui01, s:cterm0D, s:cterm01 ]
let g:airline#themes#mountaineer_grey#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui00, s:gui0C, s:cterm00, s:cterm0C ]
let s:R2   = [ s:gui05, s:gui02, s:cterm05, s:cterm02 ]
let s:R3   = [ s:gui0C, s:gui01, s:cterm0C, s:cterm01 ]
let g:airline#themes#mountaineer_grey#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui00, s:gui0E, s:cterm00, s:cterm0E ]
let s:V2   = [ s:gui05, s:gui02, s:cterm05, s:cterm02 ]
let s:V3   = [ s:gui0E, s:gui01, s:cterm0E, s:cterm01 ]
let g:airline#themes#mountaineer_grey#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui04, s:gui01, s:cterm04, s:cterm01 ]
let s:IA2   = [ s:gui04, s:gui01, s:cterm04, s:cterm01 ]
let s:IA3   = [ s:gui04, s:gui01, s:cterm04, s:cterm01 ]
let g:airline#themes#mountaineer_grey#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#mountaineer_grey#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
