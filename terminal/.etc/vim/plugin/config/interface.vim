" vim:fdm=marker:fmr={{{,}}}:fdl=1:ts=4:sts=2:sw=2:ft=vim
"
" GUI
"


" Window Splits
" set splitbelow
set splitright

set showcmd
set cmdheight=1
set noshowmode
set laststatus=2
set shortmess=aIoOtTc
set more

set wildmenu

" Cursor Line
set number relativenumber
set cursorline

augroup smartcursorline
  autocmd WinLeave * setlocal nocursorline
  autocmd WinEnter * setlocal cursorline
augroup END


if has('gui_running')
  set guioptions  =mcgM
  set guifont     =SauceCodePro\ Nerd\ Font\ Mono:h12,Source\ Code\ Pro:h12

  set columns =125
  set lines   =50
else
  " Truecolor support
  if has('termguicolors')
    set termguicolors

    " Truecolor under tmux
    set t_8b=[48;2;%lu;%lu;%lum
    set t_8f=[38;2;%lu;%lu;%lum
  endif
endif


" Secific Highlighting Rules
hi! link FoldColumn LineNr
hi! link SignColumn LineNr


" Showmarks {{{
let showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

let showmarks_ignore_type = "hqm"
let showmarks_textlower = " "
let showmarks_textupper = " "
let showmarks_hlline_lower = 0
let showmarks_hlline_upper = 0
" }}}
