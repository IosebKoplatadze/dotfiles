" Vim Configuration
" Author: Ioseb Koplatadze

" Basic settings
set nocompatible              " Use Vim defaults
filetype plugin indent on     " Enable filetype detection
syntax on                     " Enable syntax highlighting

" Display settings
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set ruler                     " Show cursor position
set showcmd                   " Show incomplete commands
set showmode                  " Show current mode
set laststatus=2              " Always show status line
set cursorline                " Highlight current line
set wildmenu                  " Enhanced command-line completion
set wildmode=longest:full,full

" Search settings
set incsearch                 " Incremental search
set hlsearch                  " Highlight search results
set ignorecase                " Case-insensitive search
set smartcase                 " Case-sensitive if uppercase present

" Indentation settings
set autoindent                " Auto-indent new lines
set smartindent               " Smart auto-indent
set expandtab                 " Use spaces instead of tabs
set tabstop=4                 " Tab width is 4 spaces
set shiftwidth=4              " Indent width is 4 spaces
set softtabstop=4             " Soft tab is 4 spaces

" File handling
set encoding=utf-8            " Use UTF-8 encoding
set fileencoding=utf-8
set autoread                  " Auto-reload changed files
set hidden                    " Allow hidden buffers

" Performance
set lazyredraw                " Don't redraw during macros
set ttyfast                   " Fast terminal connection

" Backups
set nobackup                  " No backup files
set nowritebackup             " No backup before overwriting
set noswapfile                " No swap files

" Undo
set undofile                  " Persistent undo
set undodir=~/.vim/undo       " Undo directory
set undolevels=1000           " Max undo levels

" Splits
set splitbelow                " Horizontal splits below
set splitright                " Vertical splits to the right

" Mouse support
set mouse=a                   " Enable mouse in all modes

" Clipboard
set clipboard=unnamedplus     " Use system clipboard

" Key mappings
let mapleader = ","           " Set leader key

" Clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Save file with Ctrl+S
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Toggle paste mode
set pastetoggle=<F2>

" Create undo directory if it doesn't exist
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p", 0700)
endif

" File type specific settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript,typescript,json,yaml,html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType markdown setlocal wrap linebreak

" Trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
