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

call plug#begin('~/.vim/plugged')
Plug 'raimondi/delimitmate'
Plug 'romkatv/powerlevel10k'
Plug 'powerline/powerline'

" powerline
set rtp+=(install_location)/powerline/bindings/vim
set laststatus=2
set t_Co=256


call plug#end()
