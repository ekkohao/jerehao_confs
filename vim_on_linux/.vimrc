filetype off                  " {required->[vundle]}
filetype plugin on
filetype indent on
let $LANG = 'en'  "set message language
set autoindent
set autoread
set autowrite
"set background=dark "背景使用黑色
set backspace=2
set cindent
set clipboard+=unnamed
set cmdheight=1     " 命令行（在状态行下）的高度，设置为1
set confirm
set completeopt=preview,menu
set encoding=utf-8
set fileencodings=utf-8,cp936,gbk,gb2312,ucs-bom
set fillchars=vert:\ ,stl:\ ,stlnc:\
set fileencoding=utf-8
"set foldcolumn=0
"set foldmethod=indent
"set foldlevel=3
"set foldenable      " 允许折叠
"set foldmethod=manual   " 手动折叠
set guioptions-=T " 隐藏工具栏
set gdefault
set guifont=Hack:h14:cANSI
set helplang=en
set history=1000
set hlsearch
set iskeyword+=_,$,@,%,#,-
set incsearch
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set langmenu=en   "set menu's language of gvim. no spaces beside '='
set linespace=0
set mouse=a
set matchtime=1
set nobackup
set noexpandtab
set nocompatible              " {required->[vundle]}
set nofoldenable
set nu              " 显示行号
"set ruler           " 显示标尺
set report=0
set softtabstop=4
set smarttab
set shiftwidth=4
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set shortmess=atI
set showcmd         " 输入的命令显示出来，看的清楚些
set showmatch
set selection=exclusive
set selectmode=mouse,key
set tabstop=4
set termencoding=utf-8
set viminfo+=!
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)
set wildmenu
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
""""""""""""""""""""""""""""""
""键盘命令
""""""""""""""""""""""""""""""
"比较文件
	nnoremap <C-F2> :vert diffsplit
"新建标签
	nnoremap <F2> :tabnew<CR>
	nnoremap <silent><F9> :NERDTreeToggle<CR>
	inoremap <C-h> <Left>
	inoremap <C-j> <Down>
	inoremap <C-k> <Up>
	inoremap <C-l> <Right>


"""""""""""""""""""""""""""""""
""自定义命令
"""""""""""""""""""""""""""""""
"重命名当前文件[Rename]
	:command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))

""""""""""""""""""""
""插件配置
""""""""""""""""""""
"vundle插件`
	set rtp+=~/.vim/bundle/Vundle.vim "vundle路径
	call vundle#begin('~/.vim/bundle/')

" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
"我的插件
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'vim-airline/vim-airline'
	Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required

"markdown插件配置
	let g:vim_markdown_folding_disabled = 1
	let g:vim_markdown_emphasis_multiline = 0
	let g:vim_markdown_conceal = 0

"solaried高亮配置
	syntax enable
	let g:solarized_termcolors=256
	colorscheme solarized
	set background=dark

"airline配置
	set t_Co=256
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	if exists('g:airline_symbols')
		let g:airline_symbols.branch = ''
		let g:airline_symbols.readonly = ''
		let g:airline_symbols.linenr = ''
	endif
	let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing']
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_nr_show = 1

	"设置切换Buffer快捷键"
	nnoremap <F11> :bn<CR>
	nnoremap <F10> :bp<CR>
