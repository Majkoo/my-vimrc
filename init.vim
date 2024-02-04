syntax on
filetype plugin indent on
retab

set tabstop=3
set shiftwidth=3
set number
set nocompatible
set hidden
set nocp

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  let $FZF_DEFAULT_COMMAND = 'rg --files'
endif

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-S-f> :Rg<CR>
