set foldmethod=syntax

" Auto complete options for JavaScript
autocmd FileType javascript setlocal omnifunc=tern#Complete

" JavaScript indentation
set expandtab shiftwidth=2 tabstop=2

" Allow JSX in normal JS files
let g:jsx_ext_required = 1
