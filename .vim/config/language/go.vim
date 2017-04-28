setlocal foldmethod=syntax foldlevel=0 nu

" autocomplete, gofmt, syntax etc
let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}
