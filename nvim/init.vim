call plug#begin(stdpath('data') . '/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'preservim/nerdtree'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


" Nerd tree.
map <C-t> :NERDTreeToggle<CR>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" Sets how many lines of history VIM has to remember
set history=500


" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime



" Leader key is '\' by default
nmap <leader>w :w!<cr>

" Minimum area around cursor
set scrolloff=5

" Turn on the Wild menu
set wildmenu


" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

try
    colorscheme desert
catch
endtry


set background=dark

set noswapfile

" Use spaces
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

" Line break is 500 Chars
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Pressing leader s s will toggle spellcheck
map <leader>ss :setlocal spell!<cr>
