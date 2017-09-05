" enable all Python syntax highlighting features
let python_highlight_all = 1

" Auto complete options for Python (we use jedi by default)
autocmd FileType python setlocal omnifunc=jedi#completions

" Python indentation
" About nosmartindent please look this link
" http://stackoverflow.com/questions/2063175/vim-insert-mode-comments-go-to-start-of-line
autocmd FileType python setlocal foldmethod=syntax foldlevel=0
autocmd FileType python setlocal expandtab shiftwidth=4
      \ tabstop=8 nosmartindent nofoldenable
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python highlight OverLength ctermbg=red
autocmd FileType python map <silent> <leader>pdb Oimport ipdb; ipdb.set_trace()<esc>
autocmd FileType python map <C-i> :Isort<CR>

" Python: jedi-vim disable auto preview docs
autocmd FileType python setlocal completeopt-=preview

" PyFlake8
" let g:PyFlakeOnWrite = 1
" let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
" let g:PyFlakeDisabledMessages = 'E221,E501'

" Rope AutoImport and OrganizeImport
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python nnoremap <leader>ro :RopeOrganizeImports<CR>0<CR><CR>
autocmd FileType python nnoremap <leader>ri :RopeAutoImport<CR>
autocmd FileType python nnoremap <leader>rg :RopeGotoDefinition<CR>
autocmd FileType python nnoremap <leader>rr :RopeRename<CR>

" Rope AutoComplete
let g:ropevim_guess_project=1
let g:ropevim_enable_autoimport = 1
let g:ropevim_goto_def_newwin = 'new'
let g:ropevim_autoimport_modules = ["pyramid", "pyramid.*",
      \ "sqlalchemy", "sqlalchemy.*", "sacrud", "sacrud.*"]
