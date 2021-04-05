set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set number
set noswapfile
set tabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

imap jk <Esc>
map ww :w<Enter>
map qq :q<Enter>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif



call plug#begin('~/.vim/plugged')
Plug 'raimondi/delimitmate'
Plug 'romkatv/powerlevel10k'
Plug 'powerline/powerline'

" powerline
set rtp+=(install_location)/powerline/bindings/vim
set laststatus=2
set t_Co=256


call plug#end()
