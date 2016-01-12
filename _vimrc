""""""""""""""""""""""""""""""""
""" Base setting
""""""""""""""""""""""""""""""""

set laststatus=2
syntax on
"set expandtab
"set sw=2
"set ts=2
set smartindent
set ignorecase
set incsearch
set textwidth=250
set scrolloff=4
set foldmarker=<<<<<,>>>>>
set foldmethod=marker
set listchars=tab:>.,eol:<
set list
set cursorline
set cursorcolumn

" Key mapping
noremap <F3> :bd<CR>
noremap <F2> :bp<CR>
noremap <F4> :bn<CR>
noremap <ESC><ESC> :noh<CR>
nnoremap    n nzz
nnoremap    N Nzz
noremap m .j0

" File directory
set backupdir=$HOME/.temp/vim,.
set directory=$HOME/.temp/vim,.
set undodir=$HOME/.temp/vim,.

" File encoding
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

""""""""""""""""""""""""""""""""
""" Auto command
""""""""""""""""""""""""""""""""

" Binary editor
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.{vi} set filetype=verilog

""""""""""""""""""""""""""""""""
""" color setting
""""""""""""""""""""""""""""""""
hi SpecialKey   ctermfg=8
hi NonText      ctermfg=8
hi CursorLine   cterm=none ctermbg=234
hi CursorColumn            ctermbg=234
hi Comment      ctermfg=DarkGreen

""""""""""""""""""""""""""""""""
""" Plug in
""""""""""""""""""""""""""""""""

" matchit
source $VIMRUNTIME/macros/matchit.vim

" NeoBundle
if 1 && filereadable($HOME . '/.bundlerc')
  source $HOME/.bundlerc
endif

