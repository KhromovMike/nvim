:set number
:set relativenumber
:set noswapfile
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=utf-8a
:set noswapfile
:set scrolloff=7

call plug#begin()

Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'machakann/vim-highlightedyank'
Plug 'terryma/vim-multiple-cursors'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'https://github.com/sickill/vim-monokai'
Plug 'mattn/emmet-vim' "Поагин обертки HTML в тэги
Plug 'preservim/tagbar' "Навигация по коду
Plug 'tpope/vim-surround' "Скобки

autocmd VimEnter * NERDTree

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-r> :NERDTreeFocus<CR>
colorscheme gruvbox

set background=dark

let g:coc_snippet_next = '<tab>'

let g:deoplete#enable_at_startup = 1

let g:neomake_python_enabled_makers = ['pylint']

let g:highlightedyank_highlight_duration = 1000

let g:airline_theme='dark'

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

hi HighlightedyankRegion cterm=reverse gui=reverse

nmap <F8> :TagbarToggle<CR>


