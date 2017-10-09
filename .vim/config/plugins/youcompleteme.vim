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

let g:ycm_server_log_level = 'debug'
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_global_ycm_extra_conf = '~/.vim/config/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion  = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let python_intr = "python"
if empty(system("which python"))
    python_intr = "python3"
endif
let g:ycm_python_binary_path = python_intr

let g:ycm_register_as_syntastic_checker = 1
let g:ycm_key_list_select_completion    = ['<Tab>', '<Down>']
let g:ycm_key_list_previous_completion  = ['<S-Tab>', '<Up>']
let g:SuperTabDefaultCompletionType     = '<Tab>'
let g:SuperTabContextDefaultCompletionType = '<Tab>'
" let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_collect_identifiers_from_tags_files = 1
set tags+=./.tags
" }}

" {{ SuperTab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif
" }}

" {{ Jedi
let g:jedi#use_tabs_not_buffers = 1
" }}

" {{
" let g:completor_python_binary = '/path/to/python/with/jedi/installed'
set omnifunc=syntaxcomplete#Complete
" }}

" {{ CtrlP
map <silent> <Leader>t :CtrlPMRUFiles()<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_custom_ignore = '\v[\/]dist$'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<C-e>'],
    \ 'AcceptSelection("t")': ['<Cr>'],
    \ }
" }}
