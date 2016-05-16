" Dracula theme for vim-airline
"
" Dracula theme by Zeno Rocha
" https://github.com/zenorocha/dracula-theme
"
" Developed for 24-bit color palette.
" 256-color part converted with https://gist.github.com/MicahElliott/719710
"

let g:airline#themes#dracula#palette = {}

" Normal
let s:N1   = [ '#282a36' , '#bd93f9' , 17  , 141 ]
let s:N2   = [ '#ffffff' , '#444444' , 231 , 59  ]
let s:N3   = [ '#f8f8f2' , '#282a36' , 231 , 17  ]
let g:airline#themes#dracula#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#dracula#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#44475a' , 231 , 59 , '' ] ,
      \ }

" Insert
let s:I1 = [ '#f8f8f2' , '#ff79c6' , 231 , 212 ]
let s:I2 = [ '#ffffff' , '#444444' , 231 , 59  ]
let s:I3 = [ '#ffffff' , '#282a36' , 231 , 17  ]
let g:airline#themes#dracula#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dracula#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#44475a' , 231 , 59 , '' ] ,
      \ }

" Replace
let g:airline#themes#dracula#palette.replace = copy(g:airline#themes#dracula#palette.insert)
let g:airline#themes#dracula#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124 , '' ]
let g:airline#themes#dracula#palette.replace_modified = g:airline#themes#dracula#palette.insert_modified

" Visual
let s:V1 = [ '#000000' , '#f1fa8c' , 16  , 228 ]
let s:V2 = [ '#000000' , '#444444' , 16  , 59  ]
let s:V3 = [ '#ffffff' , '#282a36' , 231 , 17  ]
let g:airline#themes#dracula#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dracula#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#44475a' , 231 , 59 , '' ] ,
      \ }

" Inactive
let s:IA1 = [ '#7e7e7e' , '#1c1c1c' , 102 , 16 , '' ]
let s:IA2 = [ '#7e7e7e' , '#262626' , 102 , 16 , '' ]
let s:IA3 = [ '#7e7e7e' , '#303030' , 102 , 59 , '' ]
let g:airline#themes#dracula#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#dracula#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

" "readonly" warning
let g:airline#themes#dracula#palette.accents = {
      \ 'red': [ '#ff5555' , '' , 203 , ''  ]
      \ }

" Ctrlp
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#dracula#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#bd93f9' , 189 , 141 , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#282a36' , '#ffffff' , 17  , 231 , 'bold' ])

