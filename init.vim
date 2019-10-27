set termguicolors
set runtimepath+=~/.vim-plugins/LanguageClient-neovim
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'rust-lang/rust.vim'
Plug 'mhartington/oceanic-next'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

let g:rustfmt_autosave = 1

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
