set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-ruby/vim-ruby'
"-----------Python Plugin ----------"
Plugin 'pep8'
Plugin 'python.vim--Vasiliev'
Plugin 'hynek/vim-python-pep8-indent'

"-------- Go Lang
Plugin 'fatih/vim-go'
Plugin 'dgryski/vim-godef'

call vundle#end()
filetype plugin indent on
filetype on
set nu
syntax on enable
set history=1000
set autoindent
set smartindent
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set ruler
set showmatch
set incsearch
set hlsearch
set showmode
set nobackup
set mouse=a
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8
set completeopt=preview,menu

"-------------Folding Settings------------"
set foldenable
set foldmethod=manual
set foldlevel=3

"------------Terminal Enable--------------"
hi Normal ctermbg=NONE

" 主题设置
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

let mapleader=","
" tab页配置
nmap <Leader>n :tabnext<CR>
nmap <Leader>p :tabprevious<CR>
nmap <Leader>e :tabedit<CR>
" NERDTree
let NERDTreeWinSize=20
nmap tr :NERDTree  <cr>
let NERDTreeWinPos ="left"
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>z <plug>NERDTreeTabsToggle<CR>
" PowerLine
set laststatus=2
let g:Powerline_symbols='unicode'

" vim-javascript
let b:javascript_fold=0

" ctrlp.vim
let g:ctrlp_map = '..'
let g:ctrlp_open_multiple_files = 'v' 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_max_height = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz
"pep8, ctrl-k作为检查快捷键
let g:pep8_map='<C-k>'

"" let g:ctrlp_custom_ignore = '\v[\/]\.(git|gh|svn)$'
let g:ctrlp_custom_ignore = { 
    \ 'dir': '\v[\/](node_modules)|\.(git|svn|swp)$',
    \ 'file': '\v\.(exe|so|dll|jar|png|jpg|jpeg)$',
    \ }

"----------------javascript settings
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"--------------for python settings
let g:pymode_indent = 1  "currently use pymode's indent
let g:pymode_rope = 0
let g:pymode_lint_write = 1
let g:pymode_lint = 1"

"-------------------- Go lang plugin Settings--------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"-------------------- Go def plugins----------------
let g:godef_split=0
let g:godef_same_file_in_same_window=1

"-------------------Plugins Settings end, Start System settings-----------
"
"Define key map for key-binds
noremap 0 ^
noremap 9 $


"Quick switch between windows.
noremap w<up> <c-w><up>
noremap wk <c-w><up>
noremap w<left> <c-w><left>
noremap wh <c-w><left>
noremap w<right> <c-w><right>
noremap wl <c-w><right>
noremap w<down> <c-w><down>
noremap wj <c-w><down>

"--------------- 系统剪切板 ---------------
"
map <C-c> "+y
map <C-v> "+p


"根据文件类型设定缩进,覆盖掉默认的~,来自humiaozuzu
autocmd FileType text setlocal textwidth=79
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79

" Auto Delimiter Settings
au FileType python let b:delimitMate_nesting_quotes = ['"']

" Python mode Settins
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" " Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" " Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"

" 执行PHP脚本
autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>
" 执行nodejs
autocmd FileType javascript noremap <C-M> :w!<CR>:!node --harmony %<CR>
" 执行shell脚本
autocmd FileType sh noremap <C-M> :w!<CR>:!sh %<CR>

nnoremap <leader>h :set filetype=html<CR>
nnoremap <leader>c :set filetype=css<CR>
nnoremap <leader>j :set filetype=javascript<CR>
nnoremap <leader>p :set filetype=php<CR>
nnoremap <leader>a :set filetype=actionscript<CR>

setlocal foldmethod=syntax
