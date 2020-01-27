" --- Plugins
call plug#begin('~/.vim/plugged')

" --- --- EditorConfig
Plug 'editorconfig/editorconfig-vim'

" --- --- Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

" --- --- Input
Plug 'cohama/lexima.vim'
Plug 'unblevable/quick-scope'

" --- --- IDE
Plug 'vim-scripts/vim-auto-save'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'

" --- --- PureScript
Plug 'purescript-contrib/purescript-vim'

" --- --- TypeScript
Plug 'leafgarland/typescript-vim'

" --- --- Nix
Plug 'LnL7/vim-nix'

" --- --- HTML
Plug 'mattn/emmet-vim'

" --- --- CSV
Plug 'chrisbra/csv.vim'

" --- --- Apex
Plug 'ejholmes/vim-forcedotcom'

" --- --- Utility
Plug 'simeji/winresizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mzlogin/vim-markdown-toc'

call plug#end()

" --- Theme
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#fugitiveline#enabled=1
let g:airline_powerline_fonts=1


" --- Lexima.vim
let g:lexima_enable_basic_rules = 1


" --- Auto save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0


" --- vim-better-whitespace
let g:better_whitespace_enabled = 1


" --- Remap keys
set backspace=0
noremap   <BackSpace> <nop>
noremap!  <BackSpace> <nop>
inoremap  <BackSpace> <nop>
noremap   <Delete>    <nop>
noremap!  <Delete>    <nop>

noremap  <C-h> <C-w>h
noremap  <C-l> <C-w>l
noremap  <C-j> <C-w>j
noremap  <C-k> <C-w>k

nnoremap Q <nop>

noremap  : q:i
vnoremap : :
noremap  / q/i

nnoremap <C-n> :Ex<CR>

nnoremap <F6> :<C-u>tabnew ~/.nvimrc<CR>
nnoremap <F7> :<C-u>source ~/.nvimrc<CR>
nnoremap <F8> :set relativenumber! number!<CR>

nnoremap <F10> :!code %<CR>

nnoremap <silent> <Esc> :noh<CR><Esc>

nnoremap cp "+p
nnoremap cy "+y
vnoremap cy "+y

nnoremap + <C-a>
nnoremap - <C-x>

tnoremap <ESC> <C-\><C-n>

nnoremap ]b :bn<CR>
nnoremap [b :bp<CR>
nnoremap ]B :bl<CR>
nnoremap [B :bf<CR>

nnoremap ]a :next<CR>
nnoremap [a :prev<CR>
nnoremap ]A :last<CR>
nnoremap [A :first<CR>

nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]C :clast<CR>
nnoremap [C :cfirst<CR>

nnoremap ]t gt
nnoremap [t gT
nnoremap ]T :tabl<CR>
nnoremap [T :tabfir<CR>


" --- Basic settings
set cursorline
set relativenumber number

set mouse=
set hlsearch
set ai
set showmatch
set ruler

set incsearch

let &t_SI .= "\e[6 q"
let &t_EI .= "\e[2 q"
let &t_SR .= "\e[4 q"

set nobackup
set nowritebackup
set noundofile
set noswapfile

set visualbell t_vb=
set novisualbell
set noerrorbells

set hidden

autocmd TermOpen * startinsert
