"----------------------------------------
"basic Settings
"----------------------------------------
" connect yank to clipboard
set clipboard+=unnamed

" move left tab with '9'
nnoremap <silent> 9 :bprev<CR>

" move right tab with '0'
nnoremap <silent> 0 :bnext<CR>

" close current tab with 'bd'
nnoremap bd :bd<CR>

" do not allow to create swap file
set noswapfile

" enable mouse
set mouse=a

" unable to use unlimited undo
set noundofile

"----------------------------------------
"display setting
"----------------------------------------

" show line number
set number

" emphasize ()etc
set showmatch

" show title
set title

" no folding show
set foldlevel=50

" highlights current line
set cursorline

"Hilight japanese space
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=red gui=reverse guifg=red
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

"----------------------------------------
"display dividing setting
"----------------------------------------

nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h
nnoremap ws :<C-u>sp<CR><C-w>j
nnoremap wv :<C-u>vs<CR><C-w>l

"----------------------------------------
"encoding setting
"----------------------------------------

set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb

"----------------------------------------
"indent and inserting mode setting
"----------------------------------------

filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

au FileType go setlocal sw=4 ts=4 sts=4 noet
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" complement [](){}<>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" complement ''""
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap ` ``<LEFT>

" use backspace when inserting mode
set backspace=indent,eol,start

"----------------------------------------
"serch system
"----------------------------------------

" ignore case
set ignorecase

" highlights when search
set hlsearch


"----------------------------------------
"key binding
"----------------------------------------

imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill()<CR>

"----------------------------------------
"dein.vim plugin manager
"----------------------------------------
if &compatible
  set nocompatible
endif

" installing directory of plugin
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" setting toml
let s:toml_dir=expand('~/dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" load plugin
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif


" install if there is no-installed plugin
if dein#check_install()
  call dein#install()
endif

"----------------------------------------
"plugin key
"----------------------------------------
nmap ? <Plug>(caw:zeropos:toggle)
vmap ? <Plug>(caw:zeropos:toggle)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



"----------------------------------------
"syntax
"----------------------------------------

syntax on
set t_Co=256
colorscheme hybrid
