" --- Base ---
set nocompatible
syntax on
filetype plugin indent on

" --- Leader ---
let mapleader = " "
let maplocalleader = " "

" --- UI ---
set number
set relativenumber
set cursorline
set showcmd
set ruler
set wildmenu
set scrolloff=5
set laststatus=2
set termguicolors
set encoding=utf-8

" --- Behavior ---
set mouse=a
set splitright
set splitbelow
set backspace=indent,eol,start
set updatetime=250
set timeoutlen=400
set nobackup
set noswapfile
set noundofile

" --- Indent ---
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent

" --- Search ---
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <Esc> :noh<CR>

" --- Whitespace ---
set listchars=tab:»·,trail:·,extends:>
set list
set wrap
set linebreak

" --- Folding ---
set foldmethod=indent
set foldlevel=1
set foldnestmax=3

" --- Completion ---
set completeopt=menuone,noinsert,noselect

" --- Theme ---
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 0
colorscheme tokyonight

" --- Airline ---
let g:airline_theme = 'tokyonight'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" --- NERDTree ---
let g:NERDTreeShowHidden = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git$', '\.class$']
let g:NERDTreeWinSize = 25
let g:NERDTreeQuitOnOpen = 1

" --- Keymaps ---
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>
nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv
vnoremap > >gv
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>ef :NERDTreeFind<CR>

" --- Terminal ---
nnoremap <leader>th :botright terminal ++rows=12<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" --- Python ---
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python setlocal textwidth=79
autocmd FileType python setlocal colorcolumn=79
nnoremap <leader>r :w<CR>:python3 -c "import jedi; print('OK')" %<CR>

" --- Clipboard ---
if executable('termux-clipboard-set')
    vnoremap <leader>y :w !termux-clipboard-set<CR><CR>
    nnoremap <leader>y :.w !termux-clipboard-set<CR><CR>
    nnoremap <leader>p :r !termux-clipboard-get<CR>
endif
if has('clipboard')
    set clipboard=unnamedplus
endif

" --- Autocmds ---
augroup vimrc
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END
