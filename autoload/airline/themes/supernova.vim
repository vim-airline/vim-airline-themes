let g:airline#themes#supernova#palette = {}
let g:airline#themes#supernova#palette.accents = {
      \ 'red': [ '#5FD7FF' , '' , 81 , '' , '' ],
      \ }

" Normal Mode:
let s:N1 = [ '#262626' , '#5FAFAF' , 235 , 73 ] " Mode
let s:N2 = [ '#D0D0D0' , '#585858' , 252 , 240  ] " Info
let s:N3 = [ '#A8A8A8' , '#262626' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#supernova#palette.normal_modified = {
      \ 'airline_c': [ '#EEEEEE' , '#262626' , 255 , 235 , '' ] ,
      \ }

" Insert Mode:
let s:I1 = [ '#E4E4E4' , '#5F0087' , 254 , 54 ] " Mode
let s:I2 = [ '#D0D0D0' , '#585858' , 252 , 240  ] " Info
let s:I3 = [ '#A8A8A8' , '#262626' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#supernova#palette.insert_modified = {
      \ 'airline_c': [ '#EEEEEE' , '#262626' , 255 , 235 , '' ] ,
      \ }

" Replace Mode:
let s:R1 = [ '#E4E4E4' , '#87005F' , 254 , 89 ] " Mode
let s:R2 = [ '#D0D0D0' , '#585858' , 252 , 240  ] " Info
let s:R3 = [ '#A8A8A8' , '#262626' , 248 , 235 ] " StatusLine

let g:airline#themes#supernova#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#supernova#palette.replace.airline_a = [ '#E4E4E4' , '#87005F' , 254 , 89, '' ]
let g:airline#themes#supernova#palette.replace_modified = {
      \ 'airline_c': [ '#EEEEEE' , '#262626' , 255 , 235 , '' ] ,
      \ }

" Visual Mode:
let s:V1 = [ '#262626', '#0087D7', 235, 32 ]
let s:V2 = [ '',        '#585858', '',  240  ]
let s:V3 = [ '#A8A8A8', '#262626', 248, 235 ]

let g:airline#themes#supernova#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#supernova#palette.visual_modified = {
      \ 'airline_c': [ '#EEEEEE', '#262626', 255, 235  ] ,
      \ }

" Inactive:
let s:IA = [ '#D0D0D0' , '#444444' , 252 , 238 , '' ]
let g:airline#themes#supernova#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#supernova#palette.inactive.airline_c = s:N2
let g:airline#themes#supernova#palette.inactive_modified = {
      \ 'airline_c': [ '#EEEEEE' , '#444444' , 255 , 238 , '' ] ,
      \ }

" CtrlP:
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#supernova#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#262626' , '#5F5F87' , 235 , 60  , ''     ] ,
      \ [ '#E4E4E4' , '#585858' , 254 , 240  , ''     ] ,
      \ [ '#A8A8A8' , '#262626' , 248 , 235 , 'bold' ] )
