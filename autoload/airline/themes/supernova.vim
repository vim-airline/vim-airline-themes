let g:airline#themes#supernova#palette = {}
let g:airline#themes#supernova#palette.accents = {
      \ 'red': [ '#d40059' , '' , 81 , '' , '' ],
      \ }

" Normal Mode:
let s:N1 = [ '#585858' , '#e4e4e4' , 235 , 73 ] " Mode
let s:N2 = [ '#e4e4e4' , '#242e33' , 252 , 240  ] " Info
let s:N3 = [ '#eeeeee' , '#1D2529' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#supernova#palette.normal_modified = {
      \ 'airline_c': [ '#eeeeee' , '#1D2529' , 255 , 235 , '' ] ,
      \ }

" Insert Mode:
let s:I1 = [ '#585858' , '#e4e4e4' , 254 , 54 ] " Mode
let s:I2 = [ '#e4e4e4' , '#242e33' , 252 , 240  ] " Info
let s:I3 = [ '#eeeeee' , '#1D2529' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#supernova#palette.insert_modified = {
      \ 'airline_c': [ '#eeeeee' , '#1D2529' , 255 , 235 , '' ] ,
      \ }

" Replace Mode:
let s:R1 = [ '#585858' , '#e4e4e4' , 254 , 89 ] " Mode
let s:R2 = [ '#e4e4e4' , '#242e33' , 252 , 240  ] " Info
let s:R3 = [ '#eeeeee' , '#1D2529' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#supernova#palette.replace.airline_a = [ '#d7005f' , '#e4e4e4' , 254 , 89, '' ]
let g:airline#themes#supernova#palette.replace_modified = {
      \ 'airline_c': [ '#eeeeee' , '#1D2529' , 255 , 235 , '' ] ,
      \ }

" Visual Mode:
let s:V1 = [ '#1D2529', '#e4e4e4', 235, 32 ]
let s:V2 = [ '',        '#242e33', '',  240  ]
let s:V3 = [ '#e4e4e4', '#1D2529', 248, 235 ]

let g:airline#themes#supernova#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#supernova#palette.visual_modified = {
      \ 'airline_c': [ '#e4e4e4', '#1D2529', 255, 235  ] ,
      \ }

" Inactive:
let s:IA = [ '#585858' , '#e4e4e4' , 252 , 238 , '' ]
let g:airline#themes#supernova#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#supernova#palette.inactive.airline_c = s:N2
let g:airline#themes#supernova#palette.inactive_modified = {
      \ 'airline_c': [ '#585864' , '#e4e4e4' , 255 , 238 , '' ] ,
      \ }

" CtrlP:
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#supernova#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e4e4e4' , '#1D2529' , 235 , 60  , ''     ] ,
      \ [ '#e4e4e4' , '#242e33' , 254 , 240  , ''     ] ,
      \ [ '#585858' , '#e4e4e4' , 248 , 235 , 'bold' ] )
