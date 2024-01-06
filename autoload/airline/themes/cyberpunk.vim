" vim-airline template by danrneal (http://github.com/danrneal)
" Cyberpunk by Tai Groot 

let g:airline#themes#cyberpunk#palette = {}

" Define the true colors
let s:AQUA    = '#0EEAFA'
let s:BEIGE   = '#CDB1AD'
let s:BLACK   = '#191919'
let s:BLUE    = '#0197DD'
let s:DGREY   = '#414C3B'
let s:GREEN   = '#408000'
let s:LGREY   = '#666666'
let s:LIME    = '#87F025'
let s:MAGENTA = '#800080'
let s:PINK    = '#FE1BF0'
let s:PURPLE  = '#0C35BF'
let s:RED     = '#FF0000'
let s:WHITE   = '#FFFFFF'
let s:YELLOW  = '#FFD302'

" Define the 256-color fallbacks
let s:TERM_AQUA    = 14
let s:BEIGE        = 224
let s:TERM_BLACK   = 233
let s:TERM_BLUE    = 75
let s:TERM_DGREY   = 240
let s:TERM_GREEN   = 70
let s:TERM_LGREY   = 246
let s:TERM_LIME    = 82
let s:TERM_MAGENTA = 90
let s:TERM_PINK    = 199
let s:TERM_PURPLE  = 54
let s:TERM_RED     = 9
let s:TERM_WHITE   = 231
let s:TERM_YELLOW  = 226

" Some default text colors for readability
let s:GREY0  = s:WHITE
let s:GREY1  = s:LGREY
let s:GREY2  = s:DGREY
let s:BG     = s:BLACK

" 256-color fallbacks for text
let s:TERM_GREY0  = s:TERM_WHITE
let s:TERM_GREY1  = s:TERM_LGREY
let s:TERM_GREY2  = s:TERM_DGREY
let s:TERM_BG     = s:TERM_BLACK

let s:unmodified = [ s:GREY1, s:GREY2, s:TERM_GREY1, s:TERM_GREY2 ]
let s:modified = {
    \ 'airline_b': [ s:AQUA, s:BG, s:TERM_AQUA, s:TERM_BG, '' ],
    \ 'airline_y': [ s:AQUA, s:BG, s:TERM_AQUA, s:TERM_BG, '' ],
    \ }

let s:W = [ s:LIME, s:PURPLE, s:TERM_LIME, s:TERM_PURPLE ]
let s:E = [ s:RED, s:PURPLE, s:TERM_RED, s:TERM_PURPLE ]

let s:modified.airline_warning = s:W
let s:modified.airline_error = s:E

" Normal mode settings
let s:N1 = [ s:BLUE, s:YELLOW, s:TERM_YELLOW, s:TERM_BLUE ]
let s:N2 = s:unmodified
let s:N3 = s:N1
let g:airline#themes#cyberpunk#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#cyberpunk#palette.normal.airline_warning = s:W
let g:airline#themes#cyberpunk#palette.normal.airline_error = s:E
let g:airline#themes#cyberpunk#palette.normal_modified = s:modified

" Insert mode settings
let s:I1 = [ s:YELLOW, s:BLUE, s:TERM_BLUE, s:TERM_YELLOW ]
let s:I2 = s:unmodified
let s:I3 = s:I1
let g:airline#themes#cyberpunk#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cyberpunk#palette.insert.airline_warning = s:W
let g:airline#themes#cyberpunk#palette.insert.airline_error = s:E
let g:airline#themes#cyberpunk#palette.insert_modified = s:modified

" Replace mode settings
let s:R1 = [ s:BG, s:RED, s:TERM_BG, s:TERM_RED ]
let s:R2 = s:unmodified
let s:R3 = s:R1
let g:airline#themes#cyberpunk#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#cyberpunk#palette.replace.airline_warning = s:W
let g:airline#themes#cyberpunk#palette.replace.airline_error = s:E
let g:airline#themes#cyberpunk#palette.replace_modified = s:modified

" Commandline mode settings
let s:C1 = [ s:BG, s:RED, s:TERM_BG, s:TERM_RED ]
let s:C2 = s:unmodified
let s:C3 = s:C1
let g:airline#themes#cyberpunk#palette.commandline = airline#themes#generate_color_map(s:C1, s:C2, s:C3)
let g:airline#themes#cyberpunk#palette.commandline.airline_warning = s:W
let g:airline#themes#cyberpunk#palette.commandline.airline_error = s:E
let g:airline#themes#cyberpunk#palette.commandline_modified = s:modified

" Visual mode settings
let s:V1 = [ s:BG, s:GREEN, s:TERM_BG, s:TERM_GREEN ]
let s:V2 = s:unmodified
let s:V3 = s:V1
let g:airline#themes#cyberpunk#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#cyberpunk#palette.visual.airline_warning = s:W
let g:airline#themes#cyberpunk#palette.visual.airline_error = s:E
let g:airline#themes#cyberpunk#palette.visual_modified = s:modified

" Inactive settings
let s:IA1 = [ s:BG, s:GREY2, s:TERM_BG, s:TERM_GREY2 ]
let s:IA2 = s:unmodified
let s:IA3 = [ s:GREY2, s:BG, s:TERM_GREY2, s:TERM_BG ]
let g:airline#themes#cyberpunk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#cyberpunk#palette.inactive_modified = s:modified

