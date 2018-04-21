set autoindent 
set cindent 
set smartindent 
set wrap 
set nowrapscan 
set nobackup 
set visualbell 
set ruler 
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
set nopaste
"ed ++ff=dos % "For ^M end of the line

" Vim setting for R
filetype indent plugin on
set modeline
set tabstop=2 shiftwidth=2 softtabstop=2

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

""" youcompleteme
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_warning_symbol = '>*'
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_auto_trigger = 1

""nnoremap g :YcmCompleter GoTo
""nnoremap gg :YcmCompleter GoToImprecise
""nnoremap d :YcmCompleter GoToDeclaration
""nnoremap t :YcmCompleter GetType
""nnoremap p :YcmCompleter GetParent

"" https://github.com/junegunn/vim-plug
let maplocalleader = ","
call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/Nvim-R'
Plug 'jalvesaq/colorout'
Plug 'jalvesaq/southernlights'
Plug 'Valloric/YouCompleteMe'
Plug 'osyo-manga/vim-brightest'
call plug#end()
set expandtab

