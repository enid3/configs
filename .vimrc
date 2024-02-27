call plug#begin('~/.vim/plugged')
"Plug 'junegunn/vim-easiy-align'
Plug 'lervag/vimtex'

Plug 'rdnetto/YCM-Generator'
            
Plug 'Yggdroot/indentLine'

Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'                 "show mistakes
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
"Plug 'vim-syntastic/syntastic'

Plug 'SirVer/ultisnips'   "snippets engine


Plug 'honza/vim-snippets' "snitppets themself

" custom vers
Plug 'vim-scripts/ReplaceWithRegister' 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-sort-motion'

" custom nouns
Plug 'michaeljsmith/vim-indent-object'

"Plug 'nicklasos/numix-molokai'
"Plug 'gruvbox-community/gruvbox'
Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-dadbod'
call plug#end()

"Disable arrow keys in Normal mode
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"Disable arrow keys in Insert mode
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

set nocompatible
set history=9999
set undolevels=9999
syntax enable


" settings
set mouse=a
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoread
set autoindent
set smartindent
set nu rnu
set laststatus=2
set noshowmode	
set timeoutlen=500
set ttimeoutlen=0
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set encoding=utf-8
set termencoding=utf-8
set updatetime=500
set noswapfile
set splitright
set splitbelow
set nocompatible
set tags=./tags;
set ignorecase
set hidden
set hlsearch
set incsearch
"set cursorline
set pumheight=10
set fillchars+=vert:\ 
" let mapleader=","
"set background=dark
"let molokai_original = 1
"
"colorscheme numix-molokai
"colorscheme solarized
"let g:gruvbox_italic=1
"colorscheme gruvbox
set t_Co=256 
"hi PmenuSel ctermfg=5 ctermbg=9
"let g:lightline = {
      "\ 'colorscheme': 'gruvbox',
      "\ }
"
let g:indentLine_char = '│'

" latest settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 2
" default ''.
" n for Normal mode
" v for Visual mode
" i for Insert mode
" c for Command line editing, for 'incsearch'
let g:indentLine_concealcursor = ""


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-shell-escape',
    \ ],
    \}
let g:ale_c_parse_makefile = 1
let g:ale_linters = {'cpp': ['clang'], 'c': ['gcc'] }
"set t_Co=256                         " Enable 256 colors

let g:programming_wiki = {'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}
let g:vimwiki_list = [programming_wiki]
set spelllang=ru_ru,en_us

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

map <F8> : !g++ % -o %:r.out -std=c++11<CR>
map <F9> : !./%:r.out<CR>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
imap jk <ESC>
imap kj <ESC>


filetype plugin on
filetype indent on
