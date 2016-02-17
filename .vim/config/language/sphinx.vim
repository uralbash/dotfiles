au FileType rst setl sw=4 sts=4 et
au BufNewFile,BufRead *.css_t set filetype=css
au BufNewFile,BufRead *.js_t set filetype=javascript

let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '/home/uralbash/.vim/config/common/rst2ctags/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }
