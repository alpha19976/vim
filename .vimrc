set autoindent 
set cindent
set shiftwidth=4
set softtabstop=4
set number
set tabstop=4
set nocompatible
filetype plugin indent on    " required
"set t_Co=256  " make use of 256 terminal colors
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'

call plug#end()
syntax off
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
