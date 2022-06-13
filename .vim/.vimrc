set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 Plugin 'othree/html5.vim'
 Plugin 'othree/csscomplete.vim'
" Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" Track the engine.
 Plugin 'SirVer/ultisnips'
"
"Plugin 'isRuslan/vim-es6'

" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
"
" " Trigger configuration. You need to change this to something other than
" <tab> if you use one of the following:
" " - https://github.com/Valloric/YouCompleteMe
" " - https://github.com/nvim-lua/completion-nvim
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
"
"
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
let g:user_emmet_leader_key=','

set rnu
syntax on
filetype plugin indent on
set autoindent
set tabstop=4 expandtab shiftwidth=4 ""softtabstop=0
set wrap
set noswapfile
set nobackup
set mouse=a
set history=10
set clipboard=unnamedplus
set encoding=utf-8
set background=dark
colorscheme gruvbox-material

"en linea"
inoremap <c-l> <c-x><c-o>
"dictionary file type"
""set dictionary? 
""au FileType * execute 'setlocal dict+=/~/.vim/dict/'.&filetype.'.yml'
au FileType yaml set dictionary+=~/.vim/dict/docker
au FileType sql set dictionary+=~/.vim/dict/sql
au FileType javascript set dictionary+=~/.vim/dict/javascript
au FileType html set dictionary+=~/.vim/dict/html

""inoremap ( ()<esc>i
""inoremap () ()
""inoremap [ []<esc>i
""inoremap [] []
""inoremap { {}<esc>i
""inoremap {} {}
inoremap {<cr> {}<esc>i<cr><esc>O
""inoremap " ""<esc>i
"inoremap <c-j> <c-o>o
"inoremap <right> <c-p>
"display and save
inoremap <F9> <esc>:wall<cr>
nnoremap <F9> :wall<cr>
nnoremap <space>q :qall!<cr>
""cnoremap <right> <c-L>
nnoremap <insert>h :split <c-d>
nnoremap <insert>v :vsplit <c-d>
"nnoremap <space><del> :qall!<cr>

"html
"au FileType html inoremap ><tab> ></<c-x><c-o><esc>F<i
"au FileType html inoremap ><cr> ></<c-x><c-o><esc>F<i<cr><esc>O
au FileType html set dictionary+=~/.vim/dict/html
"au FileType html inoremap <left> <c-x><c-k>
"au FileType html inoremap = =""<esc>i
"au FileType html inoremap <left> <c-x><c-o>
"inoremap <left> <c-x><c-o>

"php
"au FileType php inoremap ;; ;echo "<br>";
au FileType php inoremap ' ""<esc>i
au FileType php inoremap << <?php<cr>?><br><br><esc>O
"manager files
nnoremap <space>h :browse oldfiles<cr>
nnoremap <space>l :ls<cr>:b
nnoremap <space>e :edit <c-d>
nnoremap <space>t :belowright terminal ++rows=10<cr>
nnoremap <space>T :belowright vertical terminal<cr> 

"cargando plantillas"
"autocmd BufNewFile *.html ~/.vim/plantillas/html.tpl
