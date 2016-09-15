" .vimrc
" vim:sw=2
"

"Load custom settings from separate files
source ~/.vim/startup/functions.vim " User defined functions
source ~/.vim/startup/commands.vim  " User defined commands
source ~/.vim/startup/settings.vim  " Vim settings
source ~/.vim/startup/plugins.vim   " Plugins and plugins settings
source ~/.vim/startup/mappings.vim  " Mappings and shortcuts
source ~/.vim/startup/color.vim     " Syntax coloring

" CTAGS includes
set tabstop=8
set expandtab
set number

set tw:79
set guifont=Bitstream\ Vera\ Sans\ Mono\ 13
set tags=~/build/ctags
nnoremap <silent><C-]> <C-w><C-]><C-w>T

autocmd BufWritePre * :%s/\s\+$//e
