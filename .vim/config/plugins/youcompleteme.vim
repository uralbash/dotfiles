" {{{ YouCompleteMe

" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_min_num_identifier_candidate_chars = 4
" " let g:ycm_extra_conf_globlist = ['~/repos/*']
" let g:ycm_filetype_specific_completion_to_disable = {'javascript': 1}
"
" nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>
" nnoremap <leader>g :YcmCompleter GoTo<CR>
" nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>
" C++
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_server_log_level = 'debug'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/config/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python3'

let g:ycm_register_as_syntastic_checker = 1
let g:ycm_key_list_select_completion = ['<Tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-Tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<Tab>'
" let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_collect_identifiers_from_tags_files = 1
set tags+=./.tags
" }}
