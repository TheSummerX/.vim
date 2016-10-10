"================================================================
"总体设置General
"================================================================

"=====启用VIMRUNTIME=====                       =====$VIMRUNTIME
"=====基本文件--示例文件=====
source $VIMRUNTIME/vimrc_example.vim

"=====兼容=====                                =====compatibility
"=====no compatible=====
set nocompatible

"=====Normal模式下取消输入法=====               =====input method
autocmd InsertLeave * set imdisable
autocmd InsertEnter * set noimdisable
"=====语言设置=====
set spelllang=en,cjk
"=====拼写检查=====
set spell

"=====User Interface=====                               =====UI
"=====显示行号=====
set nu
"=====光标移动到buffer顶部和底部时保持三行差距
set scrolloff=3
"=====命令行高度=====
set cmdheight=2
set showcmd
"=====命令历史=====
set history=100
"=====取消启动的help orphan的提示=====
"set shortmess=atl
"=====字体=====
set guifont=DejaVu\ Sans\ Mono\ Bold\ Italic\ 12
set columns=136 lines=30
"=====配色=====
colorscheme desert
"=====主题/背景=====
"set 
"=====启动后最大化=====
"autocmd GUIEnter * simalt ~x

"=====文件目录=====                         =====file directory
"=====设定文件浏览器目录为当前目录=====
set bsdir=buffer
"=====自动切换当前目录为当前文件目录=====
set autochdir
"=====进入当前编辑文件目录=====
"au BufEnter * exec "cd%:p:h"    
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
"set textwidth=0
"=====在右起10列处折行
"set wrapmargin=0
"同时设置wrap/linebreak/textwidth=wrapmargin=0
"使得vim折行显示而不添加换行符到文本,可在具体文件：命令使用

"=====设置自动折叠=====                          =====folding
"=====启动时不折叠=====
set foldlevel=100
"=====折叠规则为语法折叠=====
"indent缩进折叠,marker标志折叠
set foldmethod=syntax
"=====折叠选项=====
set foldcolumn=4
"=====光标位置自动打开或关闭折叠=====
set foldopen=all
set foldclose=all
"=====显示匹配符号(一对括号等)=====
set showmatch

"=====设置encoding=====                          =====encoding
"编码类/显示编码/默认编码
set fileencodings=utf-8,usc-bom,gb18030,cp936,gb2312,euc-cn
set termencoding=utf-8
set encoding=utf-8

"=====高亮=====                               =====highlight
"=====高亮当前行=====
set cursorline
"=====开启语法高亮=====
syntax enable

"=====搜索=====                                 =====Search
"=====检索高亮=====
set hlsearch
"=====动态检索=====
set incsearch
"=====检索忽略大小写=====
set ignorecase

"=====状态栏=====                            =====status line
"always show current position
"set ruler
"自定义函数CurDir用于状态栏显示
function! CurDir()
    let curdir = substitute(getcwd(),'/Users/amir/',"~/","g")
    return curdir
endfunction
"=====状态栏显示(Format the status line)=====
set statusline=File:\ \%F%m%r%h%w\ \ CWD:\%r%{CurDir()}%h
set statusline+=\ \ \Pos:\ %l/%L:%c\ \ %p%%\ \   "position and percentage of file
if v:version>=600
    set statusline+=\ \ \FileType:%{strlen(&ft)?&ft:'none'}  "file type
    set statusline+=\ \ \Encoding:%{&fileencoding}   "encoding
endif
set statusline+=\ \ \Format:%{&fileformat} "file format
"set statusline+=%=  "right align
 
"=====开启显示=====
set laststatus=2

"=====中英文=====                           =====Chinese codes
"=====中文引号=====
set ambiwidth=double

"=====备份=====                                 =====backup
"=====缺省不备份=====
set nobackup
set nowritebackup
set noundofile

"=====设置文件自动处理=====                 =====file type set
"开启文件检测
filetype plugin on
"Makefile使用tab不用空格
autocmd FileType make set noexpandtab
"txt file auto insert linebreak after 78 char
au FileType txt set tw=78 fo+=Mm

"================================================================
"插件设置Plugins
"================================================================

"
"
