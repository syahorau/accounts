set encoding=utf-8
set nocompatible
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set foldcolumn=2
set mouse=a
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
set ignorecase
set smartcase
set hlsearch
set incsearch
set ffs=unix,dos,mac
map <F2> :NERDTreeToggle<CR>

syntax on
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
    call plug#begin('~/.vim/bundle') 
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    call plug#end() 

    let g:airline_powerline_fonts = 1
    let g:airline#extensions#keymap#enabled = 0
    let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
    let g:Powerline_symbols='unicode'
    let g:airline#extensions#xkblayout#enabled = 0
    autocmd VimEnter * NERDTree | wincmd p
    let NERDTreeShowHidden=1
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
 



