syntax on		" Activate syntax highlighting

set mouse=a		" Enable mouse support

set relativenumber	" Show line relative numbers for navigation
set linebreak		" Break lines at word (requires Wrap lines)
set showbreak=…	" Wrap-broken line prefix
" set textwidth=100	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
 
set hlsearch		" Highlight all search results
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally
 
" set autoindent		" Auto-indent new lines
" set expandtab		" Use spaces instead of tabs
" set shiftwidth=4	" Number of auto-indent spaces
" set smarttab		" Enable smart-tabs
" set softtabstop=4	" Number of spaces per Tab
 
" Advanced
set confirm		" Prompt confirmation dialogs
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" Tab shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

filetype off
filetype plugin indent on       " Apply indent settings per file type based on files in ~/.vim/after/ftplugin

