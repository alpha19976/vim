set autoindent
set cindent
set shiftwidth=4
set softtabstop=4
set number
set tabstop=4
set nocompatible
"set mouse=a
"filetype on
colorscheme vscode_light


filetype plugin indent on    " required
"set t_Co=256  " make use of 256 terminal colors
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

" NERDTree config
map <F3> :NERDTreeToggle<CR>

"auto-format
""F5自动格式化代码并保存
noremap <F4> :Autoformat<CR>:w<CR>
let g:autoformat_verbosemode=1
"自动格式化代码，针对所有支持的文件
"au BufWrite * :Autoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on

"call plug#begin('/etc/vim/.vim/plugged')
"Plug 'junegunn/vim-easy-align'
"Plug 'scrooloose/nerdtree'

"call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileAndRun()<CR>
func! CompileAndRun()
	:cd %:p:h
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'ncl'
		exec "!ncl %"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!java %<"
	elseif &filetype == 'fortran'
		exec "!gfortran % -o %<"
		exec "! ./%<"
	elseif &filetype == 'python'
		exec "!python %"
	elseif &filetype == 'tex'
		exec "!xelatex -shell-escape %<"
		exec "!xelatex -shell-escape %<"
	elseif &filetype == 'sh'
		:!sh ./%
	endif
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""g
