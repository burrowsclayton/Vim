
colo desert
set guioptions=-m
set guioptions=-t
set guioptions=-s
"set guifont=Lucida_Console:h11:cANSI:qDRAFT
set hlsearch
set number
set autochdir
set backspace=indent,eol,start
set noreadonly
syntax on

set tabstop=4
set softtabstop=4
filetype indent on

set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent

" Key Re-Maps
:imap jj <Esc> 
:imap uu <esc>%%u%%a

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:typescript_indent_disable = 1
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

filetype plugin indent on

" vim-plug setupt "
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'keith/swift.vim'

" List ends here. Plugins become visible to Vim after this call.
" (Step 1): After adding the above to the top of your Vim configuration file, 
" (Step 2): reload it (:source ~/.vimrc) or restart Vim. 
" (Step 3): Now run :PlugInstall to install the plugins.
call plug#end()

