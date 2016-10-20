" nerdtree设置
"
" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1

" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
let NERDTreeMouseMode=2

" 是否默认显示书签列表
let NERDTreeShowBookmarks=1
" 是否默认显示文件
let NERDTreeShowFiles=1
" 是否默认显示隐藏文件
" let NERDTreeShowHidden=1
" 显示高亮当前行
let NERDTreeHighlightCursorline=1
" 是否默认显示行号
" let NERDTreeShowLineNumbers=1
" 显示标签'Press ? for help'
let NERDTreeMinimalUI=1

" 窗口位置（'left' or 'right'）
let NERDTreeWinPos='left'
" 窗口宽
let NERDTreeWinSize=24

" 忽略文件
let NERDTreeIgnore=[ '\~$', '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]

" nerdtree
map <leader>n :NERDTreeToggle<CR>
" nerdtreetabs
" map <Leader>n <plug>NERDTreeTabsToggle<CR>

" s/v 分屏打开文件
" let g:NERDTreeMapOpenSplit = 's'
" let g:NERDTreeMapOpenVSplit = 'v'

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" 关闭同步
" let g:nerdtree_tabs_synchronize_view=0
" let g:nerdtree_tabs_synchronize_focus=0
" 是否自动开启nerdtree
" thank to @ListenerRi, see https://github.com/wklken/k-vim/issues/165
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0
