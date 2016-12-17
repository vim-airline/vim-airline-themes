let s:improved_contrast = get(g:, 'airline_base16_improved_contrast', 0)
let s:solarized         = get(g:, 'airline_base16_solarized', 0)

" Base16 term color palette
let s:base00_black   = 0
let s:base08_red     = 1
let s:base0B_green   = 2
let s:base0A_yellow  = 3
let s:base0D_blue    = 4
let s:base0E_magenta = 5
let s:base0C_cyan    = 6
let s:base05_white   = 7
let s:base03_brblack = 8
let s:base09         = 16
let s:base0F         = 17
let s:base01         = 18
let s:base02         = 19
let s:base04         = 20
let s:base06         = 21

" Gui color palette
let s:gui_dark_gray       = '#202020'
let s:gui_med_gray_lo     = '#3a3a3a'
let s:gui_med_gray_hi     = '#303030'
let s:gui_light_gray      = '#505050'
let s:gui_lightlight_gray = '#8A8A8A'
let s:gui_green           = '#99cc99'
let s:gui_blue            = '#6a9fb5'
let s:gui_purple          = '#aa759f'
let s:gui_orange          = '#d28445'
let s:gui_red             = '#ac4142'
let s:gui_pink            = '#d7afd7'

let g:airline#themes#base16_shell#palette = {}

" Normal mode
let s:N1 = [s:gui_dark_gray, s:gui_green, s:base00_black, s:base0B_green]
let s:N2 = [s:gui_light_gray, s:gui_med_gray_lo, s:base04, s:base02]
let s:N3 = [s:gui_green, s:gui_med_gray_hi, s:base0B_green, s:base01]

if s:improved_contrast
    let s:N2 = [s:gui_lightlight_gray, s:gui_med_gray_lo, s:base05_white, s:base02]
endif

if s:solarized
    let s:N1 = [s:gui_dark_gray, s:gui_green, s:base01, s:base04]
    let s:N2 = [s:gui_light_gray, s:gui_med_gray_lo, s:base00_black, s:base02]
    let s:N3 = [s:gui_green, s:gui_med_gray_hi, s:base04, s:base01]
endif

let g:airline#themes#base16_shell#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#base16_shell#palette.normal_modified = {
            \ 'airline_c': [s:gui_orange, s:gui_med_gray_hi, s:base09, s:base01, ''],
            \ }

" Insert mode
let s:I1 = [s:gui_med_gray_hi, s:gui_blue, s:base01, s:base0D_blue]
let s:I3 = [s:gui_blue, s:gui_med_gray_hi, s:base0D_blue, s:base01]
let g:airline#themes#base16_shell#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)

if s:solarized
    let s:I1 = [s:gui_med_gray_hi, s:gui_blue, s:base01, s:base0A_yellow]
    let g:airline#themes#base16_shell#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
endif

let g:airline#themes#base16_shell#palette.insert_modified = copy(g:airline#themes#base16_shell#palette.normal_modified)

" Replace mode
let s:R1 = [s:gui_dark_gray, s:gui_red, s:base01, s:base08_red]
let s:R3 = [s:gui_red, s:gui_med_gray_hi, s:base08_red, s:base01]
let g:airline#themes#base16_shell#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:R3)

if s:solarized
    let s:R1 = [s:gui_dark_gray, s:gui_red, s:base01, s:base09]
    let g:airline#themes#base16_shell#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
endif

let g:airline#themes#base16_shell#palette.replace_modified = copy(g:airline#themes#base16_shell#palette.normal_modified)

" Visual mode
let s:V1 = [s:gui_dark_gray, s:gui_pink, s:base01, s:base0E_magenta]
let s:V3 = [s:gui_pink, s:gui_med_gray_hi, s:base0E_magenta, s:base01]
let g:airline#themes#base16_shell#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:V3)

if s:solarized
  let s:V1 = [s:gui_dark_gray, s:gui_pink, s:base01, s:base0F]
  let g:airline#themes#base16_shell#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
endif

" Inactive window
if s:improved_contrast
    let s:IA = [s:gui_dark_gray, s:gui_med_gray_hi, s:base04, s:base01, '']
else
    let s:IA = [s:gui_dark_gray, s:gui_med_gray_hi, s:base03_brblack, s:base01, '']
endif
let g:airline#themes#base16_shell#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#base16_shell#palette.inactive_modified = {
            \ 'airline_c': [s:gui_orange, '', s:base09, '', ''],
            \ }
