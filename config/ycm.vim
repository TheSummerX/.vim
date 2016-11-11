" 自动触发待选补全项，默认值'1'
let g:ycm_auto_trigger = 1

" 强制触发自动补全(insert模式下)，默认值'<C-Space>'
" 开启auto_trigger时可用'.', '->', '::'触发
" 且与Ultisnips冲突，故弃用此mapping
" let g:ycm_key_invoke_completion = ''

" 补全mapping
" Defaults are as follows:
" let g:ycm_key_list_select_completion = ['<TAB>','<Down>']
" let g:ycm_key_list_prevVious_completion = ['<S-TAB>','<Up>']
" 只用<TAB>选择
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_prevVious_completion = ['<S-TAB>']

let g:ycm_min_num_of_chars_for_completion = 1   "最小开始补全的字符数

let g:ycm_complete_in_comments = 1  "在注释输入中补全，默认值'0'
let g:ycm_complete_in_strings = 1   "在字符串输入中补全，默认值'1'

let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips

let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字会被收入补全，默认值'0'
let g:ycm_collect_identifiers_from_tags_files = 1   "从tags_files收入补全，默认值'0'

" 开启语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1 "语言关键字补全,默认值'0'

" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
"nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" old version
if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
endif
" new version
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif
"加载ycm_extra_conf.py的提示
"let g:ycm_confirm_extra_conf = 0

"白名单
let g:ycm_filetype_whitelist = {
    \ 'c': 1,
    \ 'cpp': 1,
    \ 'python': 1,
    \ 'java': 1,
    \ 'html': 1,
    \ 'xml': 1
\}

" 黑名单,不启用
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'gitcommit' : 1,
\}
