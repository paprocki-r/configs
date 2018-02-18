" Leader Mappings-press SPACE and then another key
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>

syntax on

set hlsearch                          " Highlight search results
set incsearch                         " Show search results as you type
set mouse=a
set lazyredraw  " Don't redraw while executing macros (good performance config)
set showmatch " Show matching brackets when text indicator is over them

"-------------------------------------------------------------------------------
" Interface
"-------------------------------------------------------------------------------

set number            " Enable line numbers
set scrolloff=5       " Leave 5 lines of buffer when scrolling
set sidescrolloff=10  " Leave 10 characters of horizontal buffer when scrolling

"-------------------------------------------------------------------------------
" Colors & Formatting
"-------------------------------------------------------------------------------

"colorscheme solarized
set background=dark

" Showcase comments in italics
highlight Comment cterm=italic gui=italic


 
"-------------------------------------------------------------------------------
" Text, tab and indent related
"-------------------------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
    
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
 
 
 
