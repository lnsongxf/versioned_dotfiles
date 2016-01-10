"""
" John Stachurski's vimrc
"
" Comment: Neocomplete is not currently installed.  To install
" cd to .vim/bundle and git clone neocomplete
"
"""

""""""""""""""" Vundle stuff up top """"""""""""""

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


"""" My list of plugins

Plugin 'jstac/vim-snippets' 
Plugin 'SirVer/ultisnips'    
Plugin 'ajh17/VimCompletesMe'
"Plugin 'davidhalter/jedi-vim'

Plugin 'lervag/vimtex'      
Plugin 'scrooloose/nerdcommenter'   " Comments
Plugin 'JuliaLang/julia-vim'        " Julia
Plugin 'flazz/vim-colorschemes'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


""" End my list of plugins

call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""" Basic preferences """""""""""""""

set background=dark
set showmode              " show da mode
set bs=2                  " backspace over everything
set hlsearch              " highlight search matches
set textwidth=78
set vb t_vb=              " flash screen instead of beep
set showmatch             " shows matching parenthesis
set tabstop=4             " no. of spaces when press tab
set expandtab             " tabs expanded into spaces
set shiftwidth=4
set smarttab 
set autoindent            " use current level of indent in next line
set wildmode=longest,list " bash-like tab completion when opening files

set foldmethod=indent
set foldlevel=99
set formatoptions=tqn


"""""""""""" Splits """"""""""""""""""""

" More natural splits (new splits are below or on right)
"
set splitbelow
set splitright

" Moving between splits
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""" Buffers """"""""""""""""""""


" Moving between buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>


"""""""""""""" Colors and font """""""""""""""""""

if has("gui_running")
    set lines=60
    set columns=112
    set background=dark
    set guioptions=a             
    set guifont=Ubuntu\ Mono\ 14
    colorscheme solarized
else
    set t_Co=256
    colorscheme solarized
    "set term=screen-256color
    "colorscheme zenburn
    "colorscheme oceanblack256
endif


""""""""""""""""" General maps  """""""""""""""""""""""""""""

" map of maps
imap jj <Esc>
" Q is format paragraph
map Q {gq}


""""""""""""""""" Leader and related """""""""""""""""""""""

let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>q :wq<CR>


"""""""""""""""""" Function key maps """""""""""""""""""""""

" Spelling on 
map <F2> <Esc>:setlocal spell spelllang=en_us<CR>
" Spelling off 
map <F3> <Esc>:setlocal nospell<CR>
" Toggle paste on and off
map <F4> :set invpaste<CR>
map <F5> :set invnumber<CR>

"""""""""""""""""""" Jedi and jedi-vim """""""""""""""""""

"let g:jedi#auto_initialization = 1
"let g:jedi#force_py_version = 3


""""""""""""""" Neocomplete """"""""""""""""""""

"set rtp+=~/.vim/bundle/neocomplete.vim
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"let g:neocomplete#enable_at_startup = 1

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"




""""""""""""" Ultisnips """"""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"""""""""""" vimtex """""""""""""""""""""""""""

let g:tex_flavor = 'latex'
let g:vimtex_complete_enabled = 1
let g:vimtex_indent_enabled = 1
let g:vimtex_fold_enabled = 0
let g:vimtex_fold_envs = 0
let g:vimtex_motion_enabled = 0
let g:vimtex_latexmk_continuous = 0
let g:vimtex_latexmk_background = 0
let g:vimtex_view_method = 'mupdf'
let g:vimtex_quickfix_ignored_warnings = [
        \ 'Underfull',
        \ 'Overfull',
        \ 'LaTeX Font Warning',
        \ 'specifier changed to',
        \ 'Package minted',
      \ ]


"""""""""""""" Powerline """"""""""""""""""""""""""""

" Always show statusline
set laststatus=2
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/


"""""""""""""" Restructured Text """"""""""""""""

" associate *.tmpl with rst filetype
au BufRead,BufNewFile *.tmpl set filetype=rst


"""""""""""""" python stuff  """""""""""""""""

autocmd FileType python set smartindent 


""""""""""""""" line numbers """"""""""""""""""""""

autocmd FileType python set number  
autocmd FileType c set number  
autocmd FileType julia set number  



"""""""""""""""" Other stuff """""""""""""""""""

" low priority to these files in file name expansion 

set suffixes+=.aux
set suffixes+=.out
set suffixes+=.dvi
set suffixes+=.log
set suffixes+=.pdf
set suffixes+=.ps

