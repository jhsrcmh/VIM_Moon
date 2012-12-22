"终端编码"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,ASCII-8BIT
"文件载入自动进行语语法匹配
syntax enable
"关于主题设计
let g:solarized_termcolors=256
set background=light
colorscheme  solarized
call togglebg#map("<F5>")
"使终端保持透明
hi Normal ctermbg=NONE
"打开文件时，尝试使用下面的编码方式
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbkgb2312,cp936
"终端编码
set termencoding=utf-8 
"用utf8编码打开文件
set fileencoding=utf-8
"关闭错误的时候发出声音
set noeb
"文本缩进设置，自动缩进
set autoindent
"按照C语言的语法，自动地调整缩进的长度
set cindent
"智能缩进:每一行都和前一行有相同的缩进量,
set smartindent
"文件中一个 <Tab> 占据的空格数
set tabstop=4
"一开始,插入的就是4个空格,此时一旦你再按下一次tab,这次的四个空格就会和上次的四个空格组合起来变成一个制表符
set softtabstop=4
"每一级自动缩进的空格数
set shiftwidth=4
"设置鼠标启用
set mouse=a
"设置行号码
set nu
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive
set selectmode=mouse,key
"设置换行,自动换行"
set wrap
set linebreak "整词换行"
"代码折叠
set foldenable
"手动折叠
set foldmethod=manual
set foldlevel=3
"高亮显示匹配的括号
set showmatch
"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
"查找替换相关设置
set hlsearch		"搜索结果高亮显示
set incsearch       "查找单词，自动进行搜索
set gdefault        "替换时，所有的行内匹配都被替代
""代码补全
set complete=.,w,b,k,t,i
set completeopt=preview,menu
set autoread
set cpt=.,w,b

"状态栏相关设置
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全 statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2                         " 总是显示状态行 
set ruler                                " 在编辑过程中，在右下角显示光标位置的状态行
"设定折叠方式
"关闭启动时的救助贫困儿童的提示消息
set shortmess=atI
" 匹配配对的字符
set nocompatible 
"以下字符将被视为单词的一部分 (ASCII)：
set iskeyword+=33-47,58-64,91-96,123-128
"打开文件自动跳转到上次编辑的行
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"去掉兼容性"
"Sets how many lines of history VIM har to remember
set autoread
"下面设置peaksea配色方案
""if ! has("gui_running")
    set t_Co=256
""endif
 "feel free to choose :set background=light for a different style
""colors peaksea 
if has('gui_running')
	    set background=light
	else
		set background=dark
endif
"编程相关的设置
set ai!           "自动缩进

" 模仿MS Windows中的保存命令: Ctrl+S
imap <C-s> <Esc>:wa<cr>i<Right>
	nmap <C-s> :wa<cr>

"neocomplcache插件配置
let g:neocomplcache_enable_at_startup = 1 
"对NERD_comm<F3>enter的设置
nmap <F3> :NERDTree  <CR>
"NERDTree Settings{
let NERDTreeWinPos ="left"						"将NERDTree的窗口设置在gvim窗口的左边
let NERDTreeShowBookmarks=1						"当打开NERDTree窗口时，自动显示Bookmarks
"}

"ctags配置
set tags=tags;
set autochdir
set tags=/home/twins/.vim/tags
"粘贴不变形
"set paste
	"下面是对windowsManager插件的相关配置"
let g:winManagerWindowLayout= 'FileExplorer|TagList'
let g:winManagerWidth = 20
let g:defaultExplorer = 0
nmap <F7> :WMToggle<cr>              

"IminiBuffer插件
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"authorinfo插件的配置
let g:vimrc_author='twins'
let g:vimrc_email='jhsrcmh1992@gmail.com'
let g:vimrc_homepage='http://www.hit.edu.cn'
nmap <F4> :AuthorInfoDetect<cr> 

"autoclose配置
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"} 
let s:runningng = 1

"设置neocomplcache配置
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_quick_match = 1

"映射ctrl+c和ctrl+v键为copy到系统剪贴板和从系统剪切板粘贴
map <C-c> "+y 
map <C-v> "+p
map <silent><F12> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr> 

" ======= 编译 && 运行 ======= "
" 编译源文件
:command -range=% R :call Runit() "自定义命令:R,运行:R命令会执行函数Runit()
:command -range=% RP : call RunProject() "自定义命令:RP,编译C project(多个源文件)
func! RunProject()  "C多个源文件编译函数
    exec "w" 
    if &filetype == 'c'
        exec "!gcc *.c -o %<"
        exec "! ./%<"
    endif
endfunc
func! Runit()    "函数,根据不同的语言类型保存,编译,执行当前编辑文件
     exec "w"
     if &filetype == 'c'
        exec "!gcc  % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"  
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'sql'
        exec "w !mysql -uroot -ppasswd wc_test -t"
        :%s/^/--
    elseif &filetype == 'php'
        exec "!php %"
    elseif &filetype =='python'
        exec "!python2 %"
    elseif &filetype=='ruby'
        exec "!ruby %"
    elseif &filetype=='javascript'
        exec "!js %"
    elseif &filetype=='vimwiki'
        exec "Vimwiki2HTML"
    elseif &filetype=='sh'
        exec "!sh %"
    endif
endfunc
"对.vimrc配置文件的修改立即生效
autocmd! bufwritepost _vimrc source %
