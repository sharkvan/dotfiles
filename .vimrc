set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'elmcast/elm-vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

filetype plugin indent on

set background=dark
colorscheme gruvbox

set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set number
set relativenumber
set completeopt=longest,menuone
set ttymouse=xterm2
set mouse=a
set nowrap

map ; :
map <LEADER>f :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
autocmd VimEnter * if (0 == argc()) | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_left_sep= '░'
let g:airline_right_sep= '░'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType java set tags=.tags
