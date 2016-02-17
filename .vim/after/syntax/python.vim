syn keyword pythonBuiltinObj self cls object
highlight pythonBuiltinObj ctermfg=243

" syn region pyramidObj start='pyramid' end=/\./
" syn region pyramidObj start='pyramid' end=/\ /
" highlight pyramidObj ctermfg=172
"
" syn region projectObj start='healthdesk' end=/\./
" syn region projectObj start='healthdesk' end=/\ /
" syn region projectObj start='sacrud' end=/\./
" syn region projectObj start='sacrud' end=/\ /
" highlight projectObj ctermfg=213
"
" syn region sqlalchemyObj start='sqlalchemy' end=/\./
" syn region sqlalchemyObj start='sqlalchemy' end=/\ /
" highlight sqlalchemyObj ctermfg=203
"
" syn region relatedObj start='\ \.' end=/\./
" syn region relatedObj start='\ \.' end=/\ /
" highlight relatedObj ctermfg=228

syntax match OverLength /\%>80v.\+/
