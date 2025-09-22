" Base16 Porple vim-airline-theme (https://github.com/dawikur/base16-vim-airline-themes)
" For vim-airline (https://github.com/vim-airline/vim-airline)
" By Niek den Breeje (https://github.com/AuditeMarlow)

let s:scheme_slug = substitute("porple", "-", "_", "g")

let g:airline#themes#base16_{s:scheme_slug}#palette = {}

" GUI color definitions
let s:gui00 = '#292c36'
let s:gui01 = '#333344'
let s:gui02 = '#474160'
let s:gui03 = '#65568a'
let s:gui04 = '#b8b8b8'
let s:gui05 = '#d8d8d8'
let s:gui06 = '#e8e8e8'
let s:gui07 = '#f8f8f8'
let s:gui08 = '#f84547'
let s:gui09 = '#d28e5d'
let s:gui0A = '#efa16b'
let s:gui0B = '#95c76f'
let s:gui0C = '#64878f'
let s:gui0D = '#8485ce'
let s:gui0E = '#b74989'
let s:gui0F = '#986841'

" Terminal color definitions
let s:cterm00        = "00"
let s:cterm03        = "08"
let s:cterm05        = "07"
let s:cterm07        = "15"
let s:cterm08        = "01"
let s:cterm0A        = "03"
let s:cterm0B        = "02"
let s:cterm0C        = "06"
let s:cterm0D        = "04"
let s:cterm0E        = "05"
if exists("base16colorspace") && base16colorspace == "256"
	let s:cterm01        = "18"
	let s:cterm02        = "19"
	let s:cterm04        = "20"
	let s:cterm06        = "21"
	let s:cterm09        = "16"
	let s:cterm0F        = "17"
else
	let s:cterm01        = "10"
	let s:cterm02        = "11"
	let s:cterm04        = "12"
	let s:cterm06        = "13"
	let s:cterm09        = "09"
	let s:cterm0F        = "14"
endif

let g:airline#themes#base16_{s:scheme_slug}#palette.normal = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui04, s:cterm01, s:cterm04 ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.normal_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.insert = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.insert_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.replace = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.replace_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.visual = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui09, s:cterm01, s:cterm09 ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#base16_{s:scheme_slug}#palette.visual_modified = {
	\ 'airline_c' : [ s:gui07, s:gui01, s:cterm07, s:cterm01 ]}

let g:airline#themes#base16_{s:scheme_slug}#palette.inactive = airline#themes#generate_color_map(
	\ [ s:gui01, s:gui01, s:cterm01, s:cterm01 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ],
	\ [ s:gui05, s:gui01, s:cterm05, s:cterm01 ])
