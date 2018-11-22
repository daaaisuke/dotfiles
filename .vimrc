 "setting
 :syntax on
 "文字コードをUFT-8に設定
 set fenc=utf-8
 " バックアップファイルを作らない
 set nobackup
 " スワップファイルを作らない
 set noswapfile
 " 編集中のファイルが変更されたら自動で読み直す
 set autoread
 " バッファが編集中でもその他のファイルを開けるように
 set hidden
 " 入力中のコマンドをステータスに表示する
 set showcmd 
 
 
 " 見た目系
 set number
 set title
 set ambiwidth=double
 set tabstop=2
 set expandtab
 set shiftwidth=4
 set list
 set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
 set nrformats-=octal
 set hidden
 set history=50
 set virtualedit=block
 set whichwrap=b,s,[,],<,>
 set backspace=indent,eol,start
 set wildmenu
 " 現在の行を強調表示
 set cursorline
 " 行末の1文字先までカーソルを移動できるように
 set virtualedit=onemore
 " インデントはスマートインデント
 set smartindent
 " ビープ音を可視化
 set visualbell
 " 括弧入力時の対応する括弧を表示
 set showmatch
 " ステータスラインを常に表示
 set laststatus=2
 " コマンドラインの補完
 set wildmode=list:longest
 " 折り返し時に表示行単位での移動できるようにする
 nnoremap j gj
 nnoremap k gk
 "行頭移動、行末移動をCtrキー+a,eで行う
 inoremap <C-e> <Esc>$a
 inoremap <C-a> <Esc>^a
 noremap <C-e> <Esc>$a
 noremap <C-a> <Esc>^a
 "ファイル階層表示
 nnoremap :tree :NERDTreeToggle
 " カラースキーム
 colorscheme peachpuff


"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/daisuke/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/daisuke/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle "sudar/vim-arduino-syntax"
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


"configue neocomplete--------------------

