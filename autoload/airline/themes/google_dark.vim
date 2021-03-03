" vim-airline template by danrneal (http://github.com/danrneal)
" Google Scheme by Lisie Michel (https://github.com/google/vim-colorscheme-primary/)

let g:airline#themes#google_dark#palette = {}

let s:RED    = '#EA4335'
let s:GREEN  = '#34A853'
let s:YELLOW = '#FBBC05'
let s:BLUE   = '#4285F4'
let s:BLACK  = '#000000'
let s:DGREY  = '#656565'
let s:LGREY  = '#EEEEEE'
let s:WHITE  = '#FFFFFF'

let s:TERM_RED    = 167
let s:TERM_GREEN  = 71
let s:TERM_YELLOW = 220
let s:TERM_BLUE   = 69
let s:TERM_BLACK  = 16
let s:TERM_DGREY  = 241
let s:TERM_LGREY  = 255
let s:TERM_WHITE  = 231

let s:GREY0  = s:WHITE
let s:GREY1  = s:LGREY
let s:GREY2  = s:DGREY
let s:BG     = s:BLACK

let s:TERM_GREY0  = s:TERM_WHITE
let s:TERM_GREY1  = s:TERM_LGREY
let s:TERM_GREY2  = s:TERM_DGREY
let s:TERM_BG     = s:TERM_BLACK

let s:N1 = [ s:BG, s:GREEN, s:TERM_BG, s:TERM_GREEN ]
let s:N2 = [ s:GREY1, s:GREY2, s:TERM_GREY1, s:TERM_GREY2 ]
let s:N3 = [ s:GREEN, s:BG, s:TERM_GREEN, s:TERM_BG ]
let g:airline#themes#google_dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#google_dark#palette.normal_modified = {
    \ 'airline_c': [ s:GREY0, s:BG, s:TERM_GREY0, s:TERM_BG, '' ],
    \ }

let s:I1 = [ s:BG, s:BLUE, s:TERM_BG, s:TERM_BLUE ]
let s:I2 = s:N2
let s:I3 = [ s:BLUE, s:BG, s:TERM_BLUE, s:TERM_BG ]
let g:airline#themes#google_dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#google_dark#palette.insert_modified = g:airline#themes#google_dark#palette.normal_modified

let s:R1 = [ s:BG, s:RED, s:TERM_BG, s:TERM_RED ]
let s:R2 = s:N2
let s:R3 = [ s:RED, s:BG, s:TERM_RED, s:TERM_BG ]
let g:airline#themes#google_dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#google_dark#palette.replace_modified = g:airline#themes#google_dark#palette.normal_modified

let s:V1 = [ s:BG, s:YELLOW, s:TERM_BG, s:TERM_YELLOW ]
let s:V2 = s:N2
let s:V3 = [ s:YELLOW, s:BG, s:TERM_YELLOW, s:TERM_BG ]
let g:airline#themes#google_dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#google_dark#palette.visual_modified = g:airline#themes#google_dark#palette.normal_modified

let s:IA1 = [ s:BG, s:GREY2, s:TERM_BG, s:TERM_GREY2 ]
let s:IA2 = s:N2
let s:IA3 = [ s:GREY2, s:BG, s:TERM_GREY2, s:TERM_BG ]
let g:airline#themes#google_dark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#google_dark#palette.inactive_modified = g:airline#themes#google_dark#palette.normal_modified
