:set number

:set rnu

:set showmatch

:set mouse=a

:set encoding=UTF-8

execute pathogen#infect()
syntax on
filetype plugin indent on 

let g:instant_markdown_browser = "firefox --new-window"

autocmd BufWinLeave *.* mkview 

autocmd BufWinEnter *.* silent loadview

colo koehler

set autoindent

cmap w!! w !sudo tee % >/dev/null

set noerrorbells
""set visualbell

set backspace=indent,eol,start

set ttyfast

set laststatus=2

set matchpairs+=<:>

let mapleader = ";"

let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Airline Themes
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
let g:airline_theme='kolor'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'

"colorscheme wombat256
"colorscheme tango
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme distinguished
"colorscheme monokai
"colorscheme molokai
""colorscheme ir_black
"colorscheme neodark
"colorscheme kolor
"colorscheme gotham
"colorscheme jellybeans 
"volorscheme desertEx
"colorscheme skittles_berry
"colorscheme skittles_dark
"colorscheme codeblocks_dark

inoremap { {}<Left>

inoremap ( ()<Left>

inoremap " ""<Left>

inoremap ' ''<Left>

inoremap [ []<Left>

inoremap <C-H> <C-W>

nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w!<cr>


autocmd FileType rmd map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>''%:r'.pdf<Enter><Enter>

nmap G Gzz
nmap n nzz
nmap n Nzz

