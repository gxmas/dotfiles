" Mappings
" Map jk to ESC for easy hand-positioning
ino jk <esc>

"" F-Keys Mapping
" Toggle paste mode
set pastetoggle=<F2>

" toggle hlsearch
nmap <silent> <F4> :set nohlsearch!<CR>
imap <silent> <F4> <c-o>:set nohlsearch!<CR>

" Toggle Gundlo
nnoremap <F5> :GundoToggle<CR>

" Switch between conventional/relative numbering
nnoremap <F6> :call ToggleNumbering()<CR>

" Toggle Syintax Highlighting
nnoremap <F7> :call ToggleSyntax()<CR>

"Buffer exploration
nnoremap <F10> :buffers<CR>:buffer<Space>

" YouCompleteMe mappings
nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Tab handling shortcuts
nn <C-Tab> :tabnext<CR>
nn <C-S-Tab> :tabprevious<CR>
no <C-S-Tab> :tabprevious<CR>
no <C-Tab> :tabnext<CR>
ino <C-S-Tab> <ESC>:tabprevious<CR>
ino <C-Tab> <ESC>:tabnext<CR>
nn <F8> :set expandtab!<CR>
nn <Leader>h :tabnew %:h<CR>

" Open and source .vimrc and startup scripts
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>em :vsplit ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>es :vsplit ~/.vim/startup/settings.vim<cr>
nnoremap <leader>ep :vsplit ~/.vim/startup/plugins.vim<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sm :source ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>ss :source ~/.vim/startup/settings.vim<cr>

"Nerd Tree
nnoremap <leader>nt :NERDTreeToggle<cr>
