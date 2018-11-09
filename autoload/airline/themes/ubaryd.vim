" vim-airline companion theme of Ubaryd
" (https://github.com/Donearm/Ubaryd)
"
" Author:       Gianluca fiore <https://github.com/Donearm/>
" Version:      1.1
" License:      MIT

" Normal mode
let s:N1 = [ '#005f00' , '#f8f6f2','22','15']
let s:N2 = [ '#f8f6f2' , '#005f00','15','22']
let s:N3 = [ '#b88853' , '#242321' , 137, 235 ] " toffee & darkgravel

" Insert mode
let s:I1 = [ '#f8f6f2', '#e25a74','15','161']
let s:I2 = [ '#242321', '#c14c3d','235','160']
let s:I3 = [ '#f4cf86' , '#242321' , 222 , 235 ] " lighttannedskin & darkgravel

" Visual mode
let s:V1 = [ '#416389', '#f8f6f2','18','15']
let s:V2 = [ '#416389', '#f4cf86','18','222']
let s:V3 = [ '#9a4820' , '#f8f6f2','88','15']

" Replace mode
let s:R1 = [ '#242321' , '#f8f6f2','235','15']
let s:R2 = [ '#ffa724' , '#666462','214','241']
let s:R3 = [ '#f8f6f2' , '#ff7400','15','215']

" Paste mode
let s:PA = [ '#f9ef6d' , 154 ] " bleaklemon

let s:IA = [ s:N2[1], s:N3[1], s:N2[3], s:N3[3], '' ]	

let g:airline#themes#ubaryd#palette = {}
let g:airline#themes#ubaryd#palette.normal  = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#ubaryd#palette.insert  = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#ubaryd#palette.visual  = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#ubaryd#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#ubaryd#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warning Mode
let s:WI = [ '#1C1C1C' , '#ffa724' , 234 , 214 , '' ]
let g:airline#themes#ubaryd#palette.normal.airline_warning = [
        \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
        \ ]
let g:airline#themes#ubaryd#palette.insert.airline_warning  = g:airline#themes#ubaryd#palette.normal.airline_warning
let g:airline#themes#ubaryd#palette.visual.airline_warning  = g:airline#themes#ubaryd#palette.normal.airline_warning
let g:airline#themes#ubaryd#palette.replace.airline_warning = g:airline#themes#ubaryd#palette.normal.airline_warning

let g:airline#themes#ubaryd#palette.inactive = {
      \ 'airline_a' : [ s:N2[1] , s:N3[1] , s:N2[3] , s:N3[3] , '' ] }

let g:airline#themes#ubaryd#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#ubaryd#palette.normal_modified = {
      \ 'airline_a' : [ s:N2[0] , s:N4[0] , s:N2[2] , s:N4[1] , '' ] ,
      \ 'airline_c' : [ s:V1[1] , s:N2[1] , s:V1[3] , s:N2[3] , '' ] }


let g:airline#themes#ubaryd#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#ubaryd#palette.insert_modified = {
      \ 'airline_c' : [ s:V2[1] , s:N2[1] , s:V2[3] , s:N2[3] , '' ] }
let g:airline#themes#ubaryd#palette.insert_paste = {
      \ 'airline_a' : [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , '' ] }


let g:airline#themes#ubaryd#palette.replace = copy(airline#themes#ubaryd#palette.insert)
let g:airline#themes#ubaryd#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#ubaryd#palette.replace_modified = g:airline#themes#ubaryd#palette.insert_modified


let g:airline#themes#ubaryd#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#ubaryd#palette.visual_modified = {
      \ 'airline_c' : [ s:V3[0] , s:V4[0] , s:V3[2] , s:V4[1] , '' ] }

let g:airline#themes#ubaryd#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#ubaryd#palette.inactive_modified = {
      \ 'airline_c' : [ s:V1[1] , ''      , s:V1[3] , ''      , '' ] }

let g:airline#themes#ubaryd#palette.accents = {
      \ 'red': [ '#ff7400' , '' , 202 , '' , '' ],
      \ }

