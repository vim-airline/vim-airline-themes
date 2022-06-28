scriptencoding utf-8

let s:themes_dir = expand('<sfile>:h:h') . '/autoload/airline/themes'
let s:themes = map(glob(s:themes_dir . '/*.vim', 1, 1), 'fnamemodify(v:val, ":t:r")')
let s:suite = themis#suite('vim-airline-themes')

call themis#helper('command')

function! s:Test(theme)
  Throws execute('AirlineTheme ' . a:theme)
endfunction

function! s:suite.__themes__()
  let child = themis#suite('ExistThemes')
  for theme in s:themes
    let child[theme] = funcref('s:Test', [theme])
  endfor
endfunction
