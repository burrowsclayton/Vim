colo desert
set guioptions=-m
set guioptions=-t
set guioptions=-s
set guifont=Lucida_Console:h11:cANSI:qDRAFT
set hlsearch
set number
set autochdir
set backspace=indent,eol,start
syntax on

set tabstop=4
set softtabstop=4
filetype indent on

set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:typescript_indent_disable = 1
autocmd FileType html setlocal shiftwidth=2 tabstop=2

filetype plugin indent on
