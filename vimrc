set autoindent 
set cindent 
set smartindent 
set wrap 
set nowrapscan 
set nobackup 
set visualbell 
set ruler 
set tabstop=2 
set shiftwidth=2 
"set softtabstop=4 "support python
":'<,'>s/^M/\r/g "matlab -> vim ctrl+v -> vtrl+m
set ruler
set mouse=a
syntax on
set title
set hlsearch
set showmatch
set nu
set list
set listchars=tab:>-,trail:-

set encoding=utf-8
set fileencoding=utf-8
set paste
"ed ++ff=dos % "For ^M end of the line

" Vim setting for Python
filetype indent plugin on
set modeline
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

"" width restriction
set cc=80 "colorcolumn 
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"set textwidth=79

"" vim plugins 
map <F2> : TlistToggle <CR> 
map <F3> : Flisttoggle <CR>

"" tags
set tags=./tags,/usr/include/tags,~/Project/r-source/tags,~/Project/Boom/inst/include/tags,~/Project/Boom/src/tags,~/Project/gcc-4.9.2/tags,
