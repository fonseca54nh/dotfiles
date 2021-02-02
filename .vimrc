execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=nicr
set number
set rnu
set autoindent
set t_Co=256
set mousehide
set clipboard=unnamedplus
set wildmode=longest,list,full
set nocursorline
set nocursorcolumn
set lazyredraw
syntax enable

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2

set noshowmode
colorscheme aqua-vim

let g:instant_markdown_browser = "qutebrowser"

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
		      

let mapleader=";"
map <leader>w :w<cr>
map <leader>q :q!<cr>
map <leader>a :qa!<cr>
map <space>w :w<cr>
map <space>q :q!<cr>
map <space>a :qa!<cr>
map <space>e :e

map <leader>1 0i!<esc>
map <leader>1 :norm ^i!<cr>

map <leader>' 0i"<esc>
map <leader>' :norm i"<cr>

map <leader>3 0i#<esc>
map <leader>3 :norm i#<cr>

map <leader>- 0i--<esc>
map <leader>- :norm i--<cr>

map <leader>6 :norm ^x<cr>
map <leader>6 :norm ^x<cr>

map <leader><leader>v :vs<cr>
map <leader><leader>s :sp<cr>

map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-h> <c-w><c-h>
map <c-l> <c-w><c-l>


map <space>m :vertical resize +3<cr>
map <space>x :vertical resize -3<cr>
""map <c-a-]> :resize +3<cr>
""map <c-a-[> :resize -3<cr>

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

map <space>n :tabnew<cr>
map <space>j :tabprev<cr>
map <space>j <esc>:tabprev<cr>
map <space>k :tabnext<cr>
map <space>k <esc>:tabnext<cr>

map <space>tt :term<cr>

function! s:zath()
	call system('/usr/bin/zathura ', %:r.pdf)	
endfunction

map <leader>p :!zathura %:r.pdf<CR><CR>
""map <leader>p call s:zath()<CR><CR>

map <leader>o :NERDTreeToggle<cr>
map <F8> :TagbarToggle<cr>

map <c-c><c-v>t :!tangler %<cr>
map <c-t> :GenTocGFM<cr>
map <c-s-t> :GenTocGitLab<cr>

map <space>m :make<cr>

autocmd Filetype lua map <F3> :!lua %<enter>
autocmd Filetype rb map <F3> :!irb %<enter>
map <F3> :!python %<cr>
autocmd Filetype m map <F3> :!octave %<enter>

""autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>require("kableExtra");<space>require("magick");<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

autocmd Filetype rmd map <F3> :!pandoc %:r.rmd -t beamer -o %:r.pdf<enter>

""autocmd Filetype rmd map <c-c><c-h> ---<enter>title:<++><enter>author:<++><enter>output: pdf_document<enter>---

function! s:header()
	let template = $HOME . "/templates/rmarkdown.rmd"
	let i = 0
	for line in readfile(template)
		call append(i, line)
	endfor
	execute "normal! Go\<Esc>k"
endfunction
autocmd BufNewFile *.{rmd} call <SID>header()

map <leader>rv :source $MYVIMRC<cr>
""map <leader>ev :tabnew $MYVIMRC<cr>
map <leader>ev :tabnew ~/vimrc.md<cr>
map <space>e :e 
