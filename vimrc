"common conf {

    execute pathogen#infect()
    filetype plugin indent on
    filetype on

    syntax on   "syntax highlight
    set laststatus=2 "always show status bar

    set tabstop=4   " set tab and indent (below 4 items)
    set expandtab   " auto replace tab as space 
    set shiftwidth=4
    set softtabstop=4
    colorscheme 256-jungle

    autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2  " when file is ruby type than tabstop equal 2

    set nu     "line number
    set autoread  "reload files when changed on disk,i.e. via `git checkout`

    set encoding=utf-8    "auto convert file formate and default 
    set fileencodings=ucs-bom,utf-8,cp936,gbk,big5,euc-jp,euc-kr,latin1
    " set highlight cursor and switch
    set cursorline cursorcolumn
    :hi CursorLine   cterm=NONE ctermbg=234 guibg=#3E3D32 guifg=#3E3D32
    :hi CursorColumn cterm=NONE ctermbg=235 guibg=darkred guifg=white
    :nnoremap <F2> :set cursorline! cursorcolumn!<CR>
    set pastetoggle=<F9>
    " run python in vim
    nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
    " set smartindent for c"
    set smartindent
    set cindent


    " set search result highlight
    set hlsearch
    " set nohlsearch
    "normap <slient> <Space> :nohlsearch<Bar>:echo<CR>

    " map ctrl+c and ctrl+v
    noremap <C-c> y
    " noremap <C-v> P

    set ignorecase "case-insensitive search
    set list
    set listchars=tab:▸\ ,trail:▫  " show trailing whitespace

    " When vimrc is edited, reload it
    "  copied from http://amix.dk/vim/vimrc.html

    autocmd! bufwritepost vimrc source ~/.vim/vimrc

    " set quick escape from insert mode, and now I can go without arrow keys and
    " use j and k to move around in insert mode
    imap jj <esc>

    let g:molokai_original = 1

    inoremap ( ()<LEFT>
    inoremap [ []<LEFT>
    inoremap { {}<LEFT>

    function! RemovePairs()
        let s:line = getline(".")
        let s:previous_char = s:line[col(".")-1]

        if index(["(","[","{"],s:previous_char) != -1
            let l:original_pos = getpos(".")
            execute "normal %"
            let l:new_pos = getpos(".")
            " only right (
            if l:original_pos == l:new_pos
                execute "normal! a\<BS>"
                return
            end

            let l:line2 = getline(".")
            if len(l:line2) == col(".")
                execute "normal! v%xa"
            else
                execute "normal! v%xi"
            end
        else
            execute "normal! a\<BS>"
        end
    endfunction

    function! RemoveNextDoubleChar(char)
        let l:line = getline(".")
        let l:next_char = l:line[col(".")]

        if a:char == l:next_char
            execute "normal! l"
        else
            execute "normal! i" . a:char . ""
        end
    endfunction

    set backspace=2

    " inoremap <BS> <ESC>:call RemovePairs()<CR>a
    " inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
    " inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
    " inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a


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

"ctrlp{
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'

    set wildignore+=*/tmp/*,*.so,*.swp,*.zip

    "ignore some type file
    let g:ctrl_open_ignore = {
        \ 'dir': '\v[\/]\.(git)$',
        \ 'file': '\v\.(jpg|png|jpeg)$',
        \ }
"}
"nerdtree{
    map <C-n> :NERDTreeToggle<CR>
"}

"easymotion{
   let mapleader=","
"}
