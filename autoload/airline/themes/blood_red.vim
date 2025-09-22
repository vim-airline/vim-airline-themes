
" Normal mode
let s:N1 = [ '#bcbcbc' , '#d62929' , 250 , 97  ]
let s:N2 = [ '#ffffff' , '#8b0000' , 170 , 239 ]
let s:N3 = [ '#c6c6c6' , '#3a3a3a' , 251 , 237 ]

" Insert mode
let s:I1 = [ '#fffdfa' , '#8b0000' , 253 , 35  ]
let s:I2 = [ '#ffffff' , '#c50000' , 170 , 239 ]
let s:I3 = [ '#c6c6c6' , '#3a3a3a' , 251 , 237 ]

" Visual mode
let s:V1 = [ '#fffdfa' , '#d62962' , 253 , 35 ]
let s:V2 = [ '#fffdfa' , '#c50000' , 001 , 44]
let s:V3 = [ '#c6c6c6' , '#3a3a3a' , 250 , 97]

" Replace mode
let s:RE = [ '#c6c6c6' , '#d62962' , 251, 168 ]

let g:airline#themes#blood_red#palette = {}

let g:airline#themes#blood_red#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#blood_red#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#blood_red#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#blood_red#palette.visual = {
            \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#blood_red#palette.replace = copy(g:airline#themes#blood_red#palette.normal)
let g:airline#themes#blood_red#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#blood_red#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
