set termguicolors
set runtimepath+=~/.vim-plugins/LanguageClient-neovim
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set cc=80
set mouse=a
set hidden
set expandtab

call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'rust-lang/rust.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'kamykn/spelunker.vim'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'

call plug#end()

let g:rustfmt_autosave = 1
let g:coc_global_extensions = [ 'coc-tsserver' ]

if (has("termguicolors"))
 set termguicolors
endif

syntax enable

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <C-M> :bnext<CR>
nnoremap <C-N> :bprev<CR>
map <C-b> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
