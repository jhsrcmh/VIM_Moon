set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'klen/python-mode'

call vundle#end()
filetype plugin indent on

set nu
syntax on enable
set history=1000
set autoindent
set smartindent
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

filetype on
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
let g:javascript_enable_domhtmlcss = 1

" ctrlp.vim
let g:ctrlp_map = '..'
let g:ctrlp_open_multiple_files = 'v' 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_max_height = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|gh|svn)$'
let g:ctrlp_custom_ignore = { 
    \ 'dir': '\v[\/](node_modules)|\.(git|svn|swp)$',
    \ 'file': '\v\.(exe|so|dll|jar|png|jpg|jpeg)$',
    \ }

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
