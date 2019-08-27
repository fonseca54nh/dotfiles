:set number

autocmd BufWinLeave *.* mkview 

autocmd BufWinEnter *.* silent loadview

inoremap { {}<Left>

inoremap ( ()<Left>

inoremap " ""<Left>

inoremap ' ''<Left>

inoremap [ []<Left>

inoremap <C-H> <C-W>

