:set number

autocmd BufWinLeave *.* mkview 

autocmd BufWinEnter *.* silent loadview

colo desert

syntax on

inoremap { {}<Left>

inoremap ( ()<Left>

inoremap " ""<Left>

inoremap ' ''<Left>

inoremap [ []<Left>

inoremap <C-H> <C-W>

