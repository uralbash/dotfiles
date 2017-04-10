autocmd Filetype python call SetPythonConfig()
autocmd BufNewFile,BufRead *.py call SetPythonConfig()

" enable all Python syntax highlighting features
let python_highlight_all = 1

function! SetPythonConfig()
    " Auto complete options for Python (we use jedi by default)
    " au FileType python set omnifunc=jedi#completions

    " Python indentation
    " About nosmartindent please look this link
    " http://stackoverflow.com/questions/2063175/vim-insert-mode-comments-go-to-start-of-line
    setlocal foldmethod=syntax foldlevel=0
    setlocal expandtab shiftwidth=4 tabstop=8 nosmartindent nofoldenable
    setlocal colorcolumn=80
    highlight OverLength ctermbg=red

    map <silent> <leader>pdb Oimport ipdb; ipdb.set_trace()<esc>
    map <C-i> :Isort<CR>

    " Python: jedi-vim disable auto preview docs
    setlocal completeopt-=preview

    " PyFlake8
    " let g:PyFlakeOnWrite = 1
    " let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
    " let g:PyFlakeDisabledMessages = 'E221,E501'

    " Rope AutoImport and OrganizeImport
    nnoremap <leader>ro :RopeOrganizeImports<CR>0<CR><CR>
    nnoremap <leader>ri :RopeAutoImport<CR>
    nnoremap <leader>rg :RopeGotoDefinition<CR>
    nnoremap <leader>rr :RopeRename<CR>

    " Rope AutoComplete
    let g:ropevim_guess_project=1
    let g:ropevim_enable_autoimport = 1
    let g:ropevim_goto_def_newwin = 'new'
    let g:ropevim_autoimport_modules = ["pyramid", "pyramid.*", "sqlalchemy", "sqlalchemy.*", "sacrud", "sacrud.*"]
endfunction
