" Syntastic options {{{

" {{{ Debug
" let g:syntastic_debug=1
" let g:syntastic_mode_map = { 'passive_filetypes': ['rst'] }
" }}}

" {{{ Python
" Syntax check mode for python (pip install pylama)
let g:syntastic_python_checkers = ['flake8', 'mccabe', 'pep8', 'python3', 'pydocstyle']
let g:syntastic_python_pydocstyle_args = '--ignore=D100,D101,D103'
" }}}

" {{{ JavaScript
" https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
" npm install -g eslint
" npm install -g babel-eslint
" npm install -g eslint-plugin-react"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = "--no-eslintrc --config ~/.eslintrc"
" }}}

" {{{ CSS
" npm install csslint
let g:syntastic_css_checkers = ['csslint']
" }}}

" {{{ reStructuredText
let g:syntastic_rst_checkers = ['rstcheck']
" }}}

" {{{ Golang
let g:syntastic_go_checkers = ['go', 'golint']
" }}}

" {{{ Dart
" let g:syntastic_dart_checkers = ['dartanalyzer']
" }}}

" {{{ Clang
let g:syntastic_cpp_checkers = ['gcc']
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_include_dirs = ["/usr/include/qt/QtWidgets/"]
" let g:syntastic_cpp_compiler = 'gcc'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" }}}

" {{{ Settings
" Make syntastic auto update the location list and make it also check
" when the file opens
let g:syntastic_error_symbol        = '✖'
let g:syntastic_warning_symbol      = '⚠'
" let g:syntastic_style_error_symbol = '😮'
" let g:syntastic_style_warning_symbol = '😐'

let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
" }}}

" {{{ Functions
function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction
" }}}

" }}}
