autocmd Filetype ruby call SetRubyConfig()
au FileType ruby setlocal foldmethod=syntax foldlevel=0

function! SetRubyConfig()
    set expandtab
    set tabstop=2 shiftwidth=2 softtabstop=2
    set autoindent
endfunction
