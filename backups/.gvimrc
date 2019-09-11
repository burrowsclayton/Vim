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

inoremap { {<CR><BS>}<Esc>ko
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp



inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
    else
    return a:char
    endif
endf

function CloseBracket()
    if match(getline(line('.') + 1), '\s*}') < 0
    return "\<CR>}"
    else
    return "\<Esc>j0f}a"
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
    "Inserting a quoted quotation mark into the string
    return a:char
    elseif line[col - 1] == a:char
    "Escaping out of the string
    return "\<Right>"
    else
    "Starting a string
    return a:char.a:char."\<Esc>i"
    endif
endf
