"基本設定____________________________________
" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" , キーで次タブのバッファを表示
nnoremap <silent> 9 :bprev<CR>

" . キーで前タブのバッファを表示
nnoremap <silent> 0 :bnext<CR>

" bdで現在のバッファを削除
nnoremap bd :bd<CR>

" スワップファイルの作成先を変更
set noswapfile

"マウス有効
set mouse=a

"undo無制限
set undofile

"表示での設定__________________________________

"行番号
set number

"対応する括弧を強調表示にする
set showmatch

"title表示
set title






"画面分割____________________________________
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h
nnoremap ws :<C-u>sp<CR><C-w>j
nnoremap wv :<C-u>vs<CR><C-w>l



" encoding------------------------------------
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb




"インデント_____________________________________
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"挿入モードでバックスペースを使う 
set backspace=indent,eol,start

" 括弧の補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>


"検索系_________________________________________

" 検索するときに大文字小文字を区別しない
set ignorecase

" 検索した時にハイライト
set hlsearch


"キーバインド________
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill()<CR>







"dein.vim plugin manager ---------------------------------------------
if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" tomlセット
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" プラグインのロード
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" インストールしていないプラグインがあればインストールを実行
if dein#check_install()
  call dein#install()
endif

" ------------------------------------------------------------



"syntax__________
syntax on
colorscheme molokai
set t_Co=256

if &term == "xterm-256color"
    colorscheme molokai
    hi Comment ctermfg=102
    hi Visual  ctermbg=248
endif
