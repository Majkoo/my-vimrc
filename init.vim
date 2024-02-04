syntax on
filetype plugin indent on
retab

" settings
set tabstop=3
set shiftwidth=3
set number
set nocompatible
set hidden
set nocp

" install plugings (:PlugInstall, :PlugUpdate)
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" set up plugin vars
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  let $FZF_DEFAULT_COMMAND = 'rg --files'
endif

" mappings
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-S-f> :Rg<CR>
nnoremap <C-S-s> :wa!<CR>

inoremap <C-s> <c-o>:w<CR>
