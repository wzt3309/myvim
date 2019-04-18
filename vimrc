set nocompatible    " be improved, required
filetype off        " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugins for markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugins for beautiful
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugins for snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugins for latex
Plugin 'lervag/vimtex', {'for': ['tex', 'plaintex', 'bst']}

" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" Status line
set laststatus=2
set t_Co=256

set number
" 缩进
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 检测文件的类型
filetype on
filetype plugin on
filetype indent on

" 语法高亮
syntax on

" C风格缩进
set cindent
set completeopt=longest,menu

" 去掉输入错误提示声音
set noeb
" 自动保存
set autowrite

" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
" 搜索高亮
" set nohl
set hlsearch
highlight Search ctermbg=yellow ctermfg=black
highlight IncSearch ctermbg=black ctermfg=yellow
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE

" markdown configuration
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_autowrite = 1
let vim_markdown_preview_github = 1
" let vim_markdown_preview_pandoc = 1
let vim_markdown_preview_toggle = 1
let vim_markdown_preview_browser = 'Google Chrome'
let vim_markdown_preview_temp_file = 1

" status line and tab styles
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" latex configuration
" using \ll to preview pdf
let g:tex_indent_items = 0
let g:text_flavor = "xeletax"
let g:vimtex_view_method = "skim"
let g:vimtex_quickfix_mode=0

" ultisnips configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-i>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
