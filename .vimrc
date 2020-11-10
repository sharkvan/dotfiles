set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'elm-tooling/elm-vim'
Plugin 'andys8/vim-elm-syntax'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rafalbromirski/vim-airlineish'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'majutsushi/tagbar'
Plugin 'janko/vim-test'
Plugin 'kburdett/vim-nuuid'

call vundle#end()

filetype plugin indent on

set t_Co=256
set laststatus=2
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

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

let g:airline_powerline_fonts = 1
let g:airline_theme = 'airlineish'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Elm setup
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1
let g:polyglot_disabled = ['elm']
let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}
let g:ale_linters = { 'elm': ['elm_ls'] }

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']

"Vim Autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" add yaml stuffs
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" NUUID Plugin
let g:nuuid_no_mappings = 1
vmap <Leader>u <Plug>Nuuid
