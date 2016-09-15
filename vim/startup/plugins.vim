" Plugins and plugin configuration

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Undo/Redo Tree
Plugin 'sjl/gundo.vim'

" Smarter '.'
Plugin 'tpope/vim-repeat'

" Explorer for buffers
Plugin 'jlanzarotta/bufexplorer'

" Automatic space alignment
Plugin 'godlygeek/tabular'

" <p>Surrond</p>
Plugin 'tpope/vim-surround'

" Fugitive Git Wrapper
Plugin 'tpope/vim-fugitive'

" Diff signs in gutter for Git index/working diffs
"Plugin 'airblade/vim-gitgutter'
"let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0

" NERDTree for silesystem exploation
Plugin 'scrooloose/nerdtree'
let NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1

" ctrlP Plugin
Plugin 'kien/ctrlp.vim'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" NERDCommenter for easy commenting
Plugin 'scrooloose/nerdcommenter'

" Airline for pretty status/tab lines
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1 " git gutter

" Colorschemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'flazz/vim-colorschemes'

" ListToggle for display of quickfix/location list
Plugin 'Valloric/ListToggle'

" Alternate for C/C++ Header/Source navigation
Plugin 'a.vim'

" Easymotion for superquick motions
Plugin 'Lokaltog/vim-easymotion'

" Easy Ctag explorer
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
