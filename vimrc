"common conf {{

    execute pathogen#infect()
    filetype plugin indent on
    filetype on

    syntax on   "syntax highlight
    set laststatus=2 "always show status bar

    set tabstop=4   " set tab and indent (below 4 items)
    set expandtab   " auto replace tab as space 
    set shiftwidth=4
    set softtabstop=4

    set nu     "line number
    set autoread  "reload files when changed on disk,i.e. via `git checkout`

    set encoding=utf-8    "auto convert file formate and default 
    set fileencodings=ucs-bom,utf-8,cp936,gbk,big5,euc-jp,euc-kr,latin1
    "set cursorline
    set pastetoggle=<F9>

    " set smartindent for c"
    set smartindent
    set cindent


    " set search result highlight
    set hlsearch
    " set nohlsearch
    "normap <slient> <Space> :nohlsearch<Bar>:echo<CR>

    set ignorecase "case-insensitive search
    set list
    set listchars=tab:▸\ ,trail:▫  " show trailing whitespace

    " When vimrc is edited, reload it
    "  copied from http://amix.dk/vim/vimrc.html

    autocmd! bufwritepost vimrc source ~/.vim/vimrc

    " set quick escape from insert mode, and now I can go without arrow keys and
    "   " use j and k to move around in insert mode
    imap jj <esc>

"}}


"powerline{ 
    set guifont=PowerlineSymbols\ for\ Powerline 
    set nocompatible 
    set t_Co=256 
    let g:Powerline_symbols = 'fancy' 
"}

"tagbar{
    nmap <F4> :TagbarToggle<CR>   "设置快捷键
    let g:tagbar_width = 40       "设置宽度，默认为40  
    "autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开  
    let g:tagbar_right = 1        "在右侧  
"}


