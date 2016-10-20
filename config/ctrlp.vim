
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

"查找最近文件模式
"map <leader>f :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

"不需要ctrlp自动设置初始工作路径
let g:ctrlp_working_path_mode=0

"匹配结果窗口
let g:ctrlp_match_window='bottom,order:btt,min:1,max:10,results:10'

"let g:ctrlp_follow_symlinks=1

" 如果安装了ag, 使用ag
 if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
 endif

"" ctrlpfunky未使用
"" ctrlp插件1 - 不用ctag进行函数快速跳转
"nnoremap <Leader>fu :CtrlPFunky<Cr>
"" narrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"let g:ctrlp_funky_syntax_highlight = 1
"let g:ctrlp_extensions = ['funky']
