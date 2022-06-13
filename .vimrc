set nocompatible
syntax enable
filetype plugin on
set path+=**
set wrap
set tabstop=2
set shiftwidth=2
set noswapfile
set nobackup
set wildmenu
set cursorline
set rnu
colorscheme gruvbox-material
set background=dark


au FileType javascript set dictionary+=~/.vim/dict/javascript

let g:user_emmet_leader_key=','

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"vundle
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'morhetz/gruvbox'
"Plugin 'ervandew/supertab'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

call vundle#end()            " required
filetype plugin indent on    " required


nnoremap <space>h :browse oldfiles<cr>
nnoremap <space>l :ls<cr>:b
nnoremap <space>e :edit <c-d>
nnoremap <space>q :qall!<cr>
nnoremap <space>t :belowright terminal ++rows=5<cr>
nnoremap <space>v :belowright vertical terminal ++cols=40<cr>
nnoremap <space><space> <c-w>w
inoremap <F9> <esc>:wall<cr>
nnoremap <F9> :wall<cr>
inoremap <c-k> <c-x><c-k>

let g:user_emmet_settings = {
\  'variables': {'lang': 'es'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title>${1}</title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<meta name=\"robots\" content=\"index\"/>\n"
\              ."\t<link rel=\"canonical\" href=\"https://www.luiscode.cf/\" />\n"
\              ."\t<meta name=\"description\" content=\"description site\"/>\n"
\              ."\t<meta name=\"author\" content=\"luiscode\" />\n"
\              ."\t<meta name=\"copyright\" content=\"Propietario del copyright\" />\n"
\              ."\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."\t<script type=\"module\" src=\"\" defer></script>\n"
\              ."</head>\n"
\              ."<body>\n\t${0}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,php EmmetInstall

"let g:SuperTabContextDefaultCompletionType="<c-x><c-o>"
"let g:SuperTabDefaultCompletionType="<c-x><c-o>"
