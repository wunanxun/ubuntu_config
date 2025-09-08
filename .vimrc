
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/Solarized.git'    "主题方案插件
Plugin 'Lokaltog/vim-powerline'      "状态栏主题
Plugin 'scrooloose/nerdcommenter'   "多行注释
Plugin 'jiangmiao/auto-pairs'          "括号、引号自动补全
Plugin 'scrooloose/nerdtree' 
Plugin 'Yggdroot/indentLine'
"" 以下范例用来支持不同格式的插件安装.
"" 请将安装插件的命令放在vundle#begin和vundle#end之间.
"" Github上的插件
"" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'

"" 来自 http://vim-scripts.org/vim/scripts.html 的插件
"" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
"" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
"" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
"" 插件在仓库的子目录中.
"" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" solarized
set background=dark
colorscheme solarized                   "素雅
"powerline
let g:Powerline_colorscheme='solarized256'   "设置状态栏主题风格
"nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
"indentline
let g:indentLine_char='┆'                   "缩进指示线符       
let g:indentLine_enabled = 1             "开启缩进指示


" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall  	 - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

map <F5> :call RunPython() <CR>
func! RunPython()
    exec "w"
    if &filetype == 'python'
        exec "!time /usr/bin/python3 %"
    endif
endfunc

filetype on         "开启文件类型侦测
filetype indent on  "适应不同语言的智能缩进
syntax enable       "开启语法高亮功能
syntax on           "允许用定制语法高亮配色方案替换默认方案

set laststatus=2    "总是显示状态栏
set ruler           "显示光标位置
set number          "显示行号
set cursorline      "高亮显示当前行
set cursorcolumn

set expandtab       "扩展制表符号为空格
set tabstop=4       "制表符占空格数
set softtabstop=4   "将连续数量的空格视为一个制表符
set shiftwidth=4    "自动缩进所使用的空白数
set textwidth=79    "编辑器每行字符数
set autoindent      "打开自动缩进
set wildmenu        "vim命令自动补全
set guifont=Monospace\ 20


set showmatch          " Show matching brackets
set ignorecase         " Do case insensitive matching
set smartcase          " Do smart case matching
set incsearch          " Incremental search
set autowrite          " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a            " Enable mouse usage (all modes)
setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set magic " 设置魔术
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
set foldlevelstart=99 "设置默认代码不折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠











