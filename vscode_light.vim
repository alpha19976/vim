" Vim color file
" Maintainer:	David Schweikert <david@schweikert.ch>
" Last Change:	2014 Mar 19

hi clear

let g:colors_name = "vscode_light"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi Directory  ctermfg=21	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=21	   ctermbg=Grey     guibg=Grey	    guifg=Blue
hi Folded     ctermbg=Grey	   ctermfg=21 guibg=LightGrey guifg=Blue
hi IncSearch  cterm=reverse	   gui=reverse
hi LineNr     ctermfg=Brown	   guifg=Brown
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=21  guifg=White  guibg=Blue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
if &background == "light"
    hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
else
    hi Search     ctermfg=Black	   ctermbg=Yellow guibg=Yellow guifg=Black
endif
hi SpecialKey ctermfg=21	   guifg=Blue
hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=reverse	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkGreen     gui=NONE guifg=red2
hi Constant   cterm=NONE ctermfg=DarkRed	gui=NONE guifg=green3
hi Identifier cterm=NONE ctermfg=21    gui=NONE guifg=cyan4
hi PreProc    cterm=NONE ctermfg=21    gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=DarkRed    gui=NONE guifg=deeppink
hi Statement  cterm=NONE ctermfg=21	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=21	     gui=bold guifg=blue

" vim: sw=2
