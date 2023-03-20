if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'fugitive.vim'
Plugin 'Syntastic'
Plugin 'scrooloose/nerdtree'

Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'leafgarland/typescript-vim'
Plugin 'tvaintrob/bicep.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cs_checkers = ['mcs']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers=['python', 'pep8', 'flake8', 'pyflakes']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

"if !exists('g:syntax_on') | syntax enable | endif
"hi! def link jsonKeyword Identifier
"set backspace=indent,eol,start

set encoding=utf-8              " Necessary to show Unicode glyphs

set showmode                    " always show what mode we're currently editing in
set nocompatible                " be iMproved, required

" Tabs vs Spaces
set expandtab
set smarttab
set shiftwidth=2                " number of spaces to use for autoindenting
set softtabstop=2               " a tab is two spaces when editing
set tabstop=2                   " a tab is two spaces

" Visual Settings
set number                      " show line numbers

"set relativenumber              " shows numbers relative to the current line
set showcmd                     " show the very last command in the bottom right
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set smartindent
set hlsearch                    " Hightlight words during search
set showmatch                   " Always show matching parenthesis when one is hightlighted
set lazyredraw                  " redraw only when we need to
set shiftwidth=2                " number of spaces to use for autoindenting
" set textwidth=80                " Maximum width of the editor
set colorcolumn=80              " set a colored column to avoid going too far to the right
set hlsearch
set incsearch
set showmatch
set nowrap
set undofile
set ignorecase
set smartcase
set cursorline

set hidden
set history=100

" Change terminal title
set title

" Color scheme for vimdiff
" colorscheme atom-dark
highlight DiffAdd cterm=none ctermfg=green ctermbg=black
highlight DiffDelete cterm=none ctermfg=darkred ctermbg=black
highlight DiffChange cterm=none ctermfg=none ctermbg=black
highlight DiffText cterm=none ctermfg=black ctermbg=darkyellow
highlight Directory ctermfg=40
highlight Comment ctermfg=28

" set nu
" set ic
" set wildmenu
" set guifont=Consolas:h10:cANSI
ca tn tabnew
ca th tabp
ca tl tabn

" Shortcuts
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
if bufwinnr(1)
     map + <C-W>+
     map - <C-W>-
     map <c-n> <c-w><
     map <c-m> <c-w>>
endif
map ]q :cnext <CR>
map [q :cprevious <CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Fix indentation issues in js and ts files
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2

" Fix indentation issues in YAML config files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml  setlocal ts=2 sts=2 sw=2 expandtab

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" ** - Markdown shizzle - **
"
" set .md files type to markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" markdown language support
let g:markdown_fenced_languages = ['c', 'csharp', 'go', 'typescript', 'sql', 'html', 'python', 'bash=sh', 'javascript=js', 'css', 'sass']
let g:markdown_syntax_conceal = 0

" typescript
let g:typescript_indent_disable = 1
