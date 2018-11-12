" vim-airline companion theme of Laederon
" (https://github.com/Donearm/Laederon)
"
" Author:       Gianluca fiore <https://github.com/Donearm/>
" Version:      1.1
" License:      MIT

" Normal mode
let s:N1 = [ '#081c8c' , '#f8f6f2','18','15']
let s:N2 = [ '#1693a5' , '#f8f6f2','62','15']
let s:N3 = [ '#90a680' , '#2e2d2a' , 64, 235 ] " dilutedpaint & darkgravel

" Insert mode
let s:I1 = [ '#f8f6f2', '#ab3e5b','15','161']
let s:I2 = [ '#242321', '#ab3e5b','235','161']
let s:I3 = [ '#1693a5', '#f8f6f2', '62', '15']

" Visual mode
let s:V1 = [ '#005f00', '#f8f6f2','22','15']
let s:V2 = [ '#f8f6f2', '#005f00','15','22']
let s:V3 = [ '#594512', '#f8f6f2','64','15']

" Replace mode
let s:R1 = [ '#90a680' , '#f8f6f2','66','15']
let s:R2 = [ '#90a680' , '#242321','66','235']
let s:R3 = [ '#f8f6f2' , '#90a680','15','66']

" Paste mode
let s:PA = [ '#ab3e5d' , 161 ] " raspberry

let s:IA = [ s:N2[1] , s:N3[1] , s:N2[3], s:N3[3] , '' ]

let g:airline#themes#laederon#palette = {}
let g:airline#themes#laederon#palette.normal  = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#laederon#palette.insert  = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#laederon#palette.visual  = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#laederon#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#laederon#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warning Mode
let s:WI = [ '#242321' , '#ab3e5b'' , 235 , 161 , '' ]
let g:airline#themes#laederon#palette.normal.airline_warning = [
        \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
        \ ]
let g:airline#themes#laederon#palette.insert.airline_warning  = g:airline#themes#laederon#palette.normal.airline_warning
let g:airline#themes#laederon#palette.visual.airline_warning  = g:airline#themes#laederon#palette.normal.airline_warning
let g:airline#themes#laederon#palette.replace.airline_warning = g:airline#themes#laederon#palette.normal.airline_warning

let g:airline#themes#laederon#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#laederon#palette.normal_modified = {
      \ 'airline_a' : [ s:N2[0] , s:N4[0] , s:N2[2] , s:N4[1] , '' ] ,
      \ 'airline_c' : [ s:V1[1] , s:N2[1] , s:V1[3] , s:N2[3] , '' ] }

let g:airline#themes#laederon#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#laederon#palette.insert_modified = {
      \ 'airline_c' : [ s:V2[1] , s:N2[1] , s:V2[3] , s:N2[3] , '' ] }
let g:airline#themes#laederon#palette.insert_paste = {
      \ 'airline_a' : [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , '' ] }


let g:airline#themes#laederon#palette.replace = copy(airline#themes#laederon#palette.insert)
let g:airline#themes#laederon#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#laederon#palette.replace_modified = g:airline#themes#laederon#palette.insert_modified


let g:airline#themes#laederon#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#laederon#palette.visual_modified = {
      \ 'airline_c' : [ s:V3[0] , s:V4[0] , s:V3[2] , s:V4[1] , '' ] }


let g:airline#themes#laederon#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#laederon#palette.inactive_modified = {
      \ 'airline_c' : [ '#908571' , s:IA[1] , '252' , s:IA[3] , '' ] }

let g:airline#themes#laederon#palette.accents = {
      \ 'red': [ '#ef393d' , '' , 196 , '' , '' ]
      \ }

