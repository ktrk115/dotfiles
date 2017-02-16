" vim-slim syntax
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" Bundle 'slim-template/vim-slim.git'
" syntax enable
" filetype plugin indent on

syntax on

" カーソル行をハイライト
set cursorline
hi cursorline term=reverse cterm=none ctermbg=232 ctermfg=NONE
hi Cursor guifg=black ctermfg=black ctermbg=black
hi Comment ctermfg=27

"カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
" autocmd WinLeave * set nocursorline
" autocmd WinEnter,BufRead * set cursorline
augroup END

set enc=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
"set fencs=iso-2022-jp,euc-jp,cp932
set ambiwidth=double

"インデント関連
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set noexpandtab
set nopaste

" 表示関連
set number
set ruler
set nolist
set noshowmatch
let loaded_matchparen = 1
set wrap
set title
set showcmd
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}
set wildmenu
set fileformats=unix,dos,mac

set backspace=2
set scrolloff=5
set formatoptions+=mM
let format_join_spaces = 4
let format_allow_over_tw = 1
set nobackup
set history=1000
set mouse=a
set clipboard+=unnamed

set iminsert=0
set imsearch=0
set imdisable
set iminsert=1
set imsearch=1

filetype plugin indent on
highlight Search term=reverse ctermbg=DarkBlue ctermfg=NONE
autocmd FileType ruby set tabstop=2 tw=0 sw=2 expandtab
autocmd FileType eruby set tabstop=2 tw=0 sw=2 expandtab
autocmd BufNewFile,BufRead app/*/*.rhtml set ft=mason fenc=utf-8
autocmd BufNewFile,BufRead app/**/*.rb set ft=ruby fenc=utf-8
autocmd BufNewFile,BufRead app/**/*.yml set ft=ruby fenc=utf-8
autocmd BufNewFile,BufRead *.cap set ft=ruby fenc=utf-8
autocmd BufNewFile,BufRead *.rabl set ft=ruby fenc=utf-8
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType c hi Comment ctermfg=darkcyan
autocmd FileType cpp hi Comment ctermfg=darkcyan
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et

" 挿入モードの時に、コントロールを押しながらj, k, b, lで移動が可能になる
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-l> <Right>
inoremap <C-d> <Right><ESC>xi
inoremap <C-o> <ESC>o

" 検索関連
set ignorecase
set wrapscan
set incsearch
set hlsearch

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz

" Enterを押した時に改行+挿入
nnoremap <S-Enter> O<ESC>
nnoremap <Enter> o<ESC>

nnoremap <Space>.  :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>,  :<C-u>source $MYVIMRC<CR>

" q(一連の操作の記録)を間違えて押してことが多いので
" qqqと３回押して初めて操作記録ができるようにする。
nnoremap qqq: <Esc>q:
nnoremap qqq/ <Esc>q/
nnoremap qqq? <Esc>q?
nnoremap q: <Nop>
nnoremap q/ <Nop>
nnoremap q? <Nop>

" NERD Commenter
" コメントアウトに関する便利なプラグイン 
" https://github.com/scrooloose/nerdcommenter Installationを参考に
let NERDSpaceDelims = 1
let NERDShutUp = 1
let mapleader = ','
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

""""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""""
  if has("autocmd")
       autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
"""""""""""""""""""""""""""""""

" NERDTree setting
set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
endif

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'scrooloose/syntastic'
call neobundle#end()

filetype plugin indent on
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" pythonの文法チェック
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

" カーソル変更
let &t_SI = "\e]50;CursorShape=1\x7"
let &t_EI = "\e]50;CursorShape=0\x7"

" QFixGrep
set runtimepath+=~/.vim/qfixapp
" QuickFixウィンドウでもプレビューや絞り込みを有効化
let QFixWin_EnableMode = 1
" QFixHowm/QFixGrepの結果表示にロケーションリストを使用する/しない
let QFix_UseLocationList = 1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
