set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_quiet_message={'type':'style'}

let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

map <leader>sc :SyntasticCheck<CR>

let g:syntastic_mode_map={
            \ "mode": "passive",
            \ "active_filetypes": ["java", "javascript", "xml", "html"],
            \ "passive_filetypes": ["python", "c", "cpp", "go", "scala", "tex"] }
"Use Python-mode for python,YCM for C-family,so disable syntastic.

"Use ESLint as the javascript checker
let g:syntastic_javascript_checkers=['eslint']
" " error code: http://pep8.readthedocs.org/en/latest/intro.html#error-codes
" let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
" let g:syntastic_python_pep8_args='--ignore=E501,E225,E124,E712'
