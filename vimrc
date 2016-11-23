"================================================================
"插件列表
"基于Vundle
"================================================================

   set nocompatible              " 去除VI一致性,必须
   filetype off                  " 必须

   " 设置包括vundle和初始化相关的runtime path
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " 另一种选择, 指定一个vundle安装插件的路径
   "call vundle#begin('~/some/path/here')

   " 让vundle管理插件版本,必须
   Plugin 'VundleVim/Vundle.vim'

   " 以下范例用来支持不同格式的插件安装.
   " 请将安装插件的命令放在vundle#begin和vundle#end之间.
   " Github上的插件
   " 格式为 Plugin '用户名/插件仓库名'
   " Plugin 'tpope/vim-fugitive'
   " 来自 http://vim-scripts.org/vim/scripts.html 的插件
   " Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
   " Plugin 'L9'
   " 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
   " Plugin 'git://git.wincent.com/command-t.git'
   " 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
   " Plugin 'file:///home/gmarik/path/to/plugin'
   " 插件在仓库的子目录中.
   " 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
   " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
   " Plugin 'ascenator/L9', {'name': 'newL9'}

    Plugin 'Valloric/YouCompleteMe' "自动补全
    Plugin 'SirVer/ultisnips'   "代码片段插入，作为engine
    Plugin 'honza/vim-snippets'    "ultisnips的库
    Plugin 'scrooloose/syntastic'   "语法检查
    Plugin 'scrooloose/nerdtree'    "目录树
    Plugin 'scrooloose/nerdcommenter'   "注释
    Plugin 'jlanzarotta/bufexplorer'    "历史文件管理
    Plugin 'majutsushi/tagbar'  "Tags display,ordered by scope.基于ctags的处理，只完成显示
    Plugin 'vim-airline/vim-airline'  "status/tabline美化
    " Plugin 'kien/ctrlp.vim' "搜索file,buffer,tag,etc.
    Plugin 'ctrlpvim/ctrlp.vim'    "kien/ctrlp的active fork
    Plugin 'kien/rainbow_parentheses.vim'   "彩色分级括号
    Plugin 'rking/ag.vim'   "使用 Silver Searcher 搜索代码，比 grep 速度快
    Plugin 'Yggdroot/indentLine'    "对齐竖线提示
    Plugin 'bronson/vim-trailing-whitespace'    "代码行末空白检错
    Plugin 'tpope/vim-surround' "括号、引号、XML标签等成对删除、更改、添加等
    Plugin 'Raimondi/delimitMate'   "括号、引号等自动补对

    Plugin 'altercation/vim-colors-solarized'   "solarized主题

    Plugin 'klen/python-mode'   "Python
    " Plugin 'hdima/python-syntax'    "Python语法高亮

    Plugin 'plasticboy/vim-markdown'    "markdown

    Plugin 'TaskList.vim'   "TODO列表查看和跳转
    " Plugin 'vim-scripts/taglist'    "Tags

   " 你的所有插件需要在下面这行之前
   call vundle#end()            " 必须
   filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
   " 忽视插件改变缩进,可以使用以下替代:
   " filetype plugin on
   "
   " 简要帮助文档
   " :PluginList       - 列出所有已配置的插件
   " :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
   " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
   " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
   "
   " 查阅 :h vundle 获取更多细节和wiki以及FAQ
   " 将你自己对非插件片段放在这行之后


"================================================================
"总体设置General
"================================================================

" vimrc文件修改之后自动加载, linux
" autocmd! bufwritepost .vimrc source %

"=====启用vimrc-example=====                   =====vimrc-example
"=====基本文件--示例文件=====
" source $VIMRUNTIME/vimrc_example.vim

"=====兼容=====                                =====compatibility
"=====no compatible=====
set nocompatible

"=====鼠标=====                                     =====mouse
"In many terminal emulators the mouse works just fine,thus enable it.
if has('mouse')
    set mouse=a
endif

"=====语言设置=====                                 =====spell
"cjk为东亚文字，避免汉字被判定为错误
set spelllang=en,cjk
"=====拼写检查=====
" set spell

"=====backspace作为删除=====                    =====backspace
"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"=====自动补全=====                             =====Autocomplete
"设置为类似IDE的补全提示
set completeopt=longest,menu

"=====User Interface=====                               =====UI
set columns=136 lines=36
"=====去除工具栏和菜单栏=====
set guioptions-=T
set guioptions-=m
"=====去除两侧滚动条=====
set guioptions-=L
set guioptions-=r
"=====显示行号=====
set nu
set numberwidth=1
set fdc=0
"=====光标移动到buffer顶部和底部时保持三行差距
set scrolloff=3
"=====命令行高度=====
" set cmdheight=2
set showcmd
"=====命令历史=====
set history=100
"=====取消启动的help orphan的提示=====
" set shortmess=atl
"=====字体=====
set guifont=DejaVu\ Sans\ Mono\ For\ Powerline\ Bold\ Oblique\ 12
"=====配色=====
" 在solarized插件中设置
" colorscheme solarized
" colorscheme koehler "desert/elflord/evening/default
"=====主题/背景=====
"set bg=
"=====启动后最大化=====
" autocmd GUIEnter * simalt ~x

"=====文件目录=====                         =====file directory
"=====设定文件浏览器目录为当前目录=====
set bsdir=buffer
"=====自动切换当前目录为当前文件目录=====
set autochdir
"=====进入当前编辑文件目录=====
" au BufEnter * exec "cd%:p:h"
"=====自动重加载外部修改=====
set autoread
"=====允许有未保存修改时切换缓冲区=====
set hidden

"=====设置缩进=====                                  =====indent
"设置\t为8个空格
set tabstop=8
"设置tab缩进为1至4个空格
set softtabstop=4
"设置空格代替tab
set expandtab
"设置块缩进
set shiftwidth=4
"设置自动智能对齐
set autoindent
set smartindent
"=====折行显示=====
set wrap
"=====在breakat的规则处折行=====
set linebreak
"=====被折行自动对齐=====
"参数breakindentopt
set breakindent
"=====被折行显示的行的提示符=====
let &showbreak='+++'
"=====按空格在宽度限制内折行=====
" set textwidth=0
"=====在右起10列处折行
" set wrapmargin=0
"同时设置wrap/linebreak/textwidth=wrapmargin=0
"使得vim折行显示而不添加换行符到文本,可在具体文件：命令使用
"本设置文件引用的"$VIMRUNTIME/vimrc_example.vim"规定了text文件都设置tw=78

""=====设置自动折叠=====                          =====folding
""=====启动时不折叠=====
set foldlevelstart=99
" 默认折叠等级为0，折叠开启
" set foldlevel=0
" set foldenable
""=====折叠规则为语法折叠=====
""indent缩进折叠,marker标志折叠
set foldmethod=syntax
""=====折叠选项=====
set foldcolumn=5
""=====光标位置自动打开或关闭折叠=====
set foldopen=all
set foldclose=all
""=====显示匹配符号(一对括号等)=====
set showmatch

"=====设置encoding=====                          =====encoding
"=====file format=====默认unix故注释
" set fileformat=unix
"编码类/显示编码/默认编码
set fileencodings=utf-8,usc-bom,gb18030,cp936,gb2312,euc-cn
set termencoding=utf-8
set encoding=utf-8

"=====高亮=====                               =====highlight
"=====高亮当前行=====
set cursorline
""=====开启语法高亮=====
syntax enable

"=====搜索=====                                 =====Search
"=====检索高亮=====
set hlsearch
"=====动态检索=====
set incsearch
"=====检索忽略大小写=====
set ignorecase

"=====状态栏=====                            =====status line
"===使用了airline插件故注释
    "always show current position
    " set ruler
    "自定义函数CurDir用于状态栏显示
    " function! CurDir()
    "     let curdir = substitute(getcwd(),'/Users/amir/',"~/","g")
    "     return curdir
    " endfunction
    "=====状态栏显示(Format the status line)=====
    " set statusline=File:\ \%F%m%r%h%w\ \ CWD:\%r%{CurDir()}%h
    " set statusline+=\ \ \Pos:\ %l/%L:%c\ \ %p%%\ \   "position and percentage of file
    " if v:version>=600
    "     set statusline+=\ \ \FileType:%{strlen(&ft)?&ft:'none'}  "file type
    "     set statusline+=\ \ \Encoding:%{&fileencoding}   "encoding
    " endif
    " set statusline+=\ \ \Format:%{&fileformat} "file format
    " set statusline+=%=  "right align
    ""=====开启显示=====
    " set laststatus=2

"=====中英文=====                           =====Chinese codes
"=====中文引号=====
set ambiwidth=double

"=====备份=====                                 =====backup
"=====缺省不备份=====
set nobackup
set nowritebackup
set noundofile

"=====键映射=====                           =====key mapping
"设置leader
let mapleader = ','
let g:mapleader = ','

"设定Esc
"Normal 和 Visual 模式行间移动较频繁，故用<leader>
"Insert Command-line Operator 模式基本不会输入 jk
" nnoremap jk <Esc>
" vnoremap jk <Esc>
onoremap jk <Esc>
inoremap jk <Esc>
cnoremap jk <Esc>
nnoremap <leader>jk <Esc>
vnoremap <leader>jk <Esc>
" omap <leader>jk <Esc>
" imap <leader>jk <Esc>
" cmap <leader>jk <Esc>

"在自动wrap的行中使用j,k移动
vmap j gj
vmap k gk
nmap j gj
nmap k gk

"=====Auto Command=====                         =====autocmd
"Only do this when compiled with support for autocmd
if has("autocmd")

    "Enable file type detection
    "Enable plugin and indent
    filetype plugin indent on

    "put these in an autocmd group,so that we can delete them easily
    augroup vimrcEx
    au!

    "When editing a file,always jump to the last known cursor position.
    "Don't do it when the position is invalid or when inside an event
    "handler(happens when dropping a file on gvim).
    autocmd BufReadPost *
                \if line("'\"") >= 1 && line("'\"") <= line("$") |
                \   exe "normal! g'\"" |
                \endif

    "=====Normal模式下取消输入法=====
    autocmd InsertLeave * set imdisable
    autocmd InsertEnter * set noimdisable

    "=====设置文件自动处理=====                 =====file type opt
    "开启文件检测
    "filetype plugin on
    autocmd BufNewFile,BufRead *.py,*.pyw set filetype=python
    autocmd BufNewFile,BufRead *.coffee set filetype=coffee
    autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=markdown.mkd
    autocmd BufNewFile,BufRead *.part set filetype=html
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd BufNewFile,BufRead *.js set filetype=javascript

    "Makefile使用tab不用空格
    autocmd FileType make set noexpandtab

    "txt file auto insert linebreak after 78 char
    autocmd FileType txt set tw=78 fo+=Mm

    "Markdown file set textwidth=0,visually wrapped.
    autocmd FileType markdown.mkd set tw=0

    autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
    autocmd FileType python setlocal colorcolumn=80
    autocmd FileType python set foldmethod=indent

    autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

    autocmd FileType haskell setlocal expandtab shiftwidth=2 softtabstop=2
    autocmd FileType haskell setlocal commentstring=--/ %s
    autocmd FileType haskell setlocal nospell

    " disable showmatch when use > in php
    autocmd BufWinEnter *.php set mps-=<:>


    augroup END
endif   "has("autocmd")

"================================================================
"插件配置Plugins
"================================================================

source ~/.vim/config/ctrlp.vim
source ~/.vim/config/delimitMate.vim
source ~/.vim/config/indentline.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/nerdcommenter.vim
source ~/.vim/config/python-mode.vim
source ~/.vim/config/rainbow_parentheses.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/ultisnips.vim
source ~/.vim/config/vim-airline.vim
source ~/.vim/config/vim-colors-solarized.vim
source ~/.vim/config/vim-markdown.vim
source ~/.vim/config/vim-trailing-whitespace.vim
source ~/.vim/config/ycm.vim

"Using defaults or no need to config for plugins bellow
" source ~/.vim/config/Tasklist
" source ~/.vim/config/vim-surround
" source ~/.vim/config/bufexplorer



