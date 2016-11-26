if !has('gui_running')
"    source ~/.vim/vimrc
end
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 "ruby コード補完プラグイン----------------------------------------------
" dein
" Vim起動完了時にインストール
augroup PluginInstall
  autocmd!
  autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END

" 各プラグインをインストールするディレクトリ
let s:plugin_dir = expand('~/.vim/')

" dein.vimをインストールするディレクトリをランタイムパスへ追加
let s:dein_dir = s:plugin_dir . 'repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_dir

" dein.vimがまだ入ってなければ 最初に git clone
if !isdirectory(s:dein_dir)
  call mkdir(s:dein_dir, 'p')
  silent execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_dir)
endif

"dein plugin settings
if dein#load_state(s:plugin_dir)
  call dein#begin(s:plugin_dir)
endif

" ここからインストールするプラグイン
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('Shougo/neocomplcache-rsense.vim')


" neocomplcacheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1


" Rsense用の設定
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"rsenseのインストールフォルダがデフォルトと異なるので設定
let g:rsenseHome = expand("/Users/akira/.rbenv/shims/rsense")
let g:rsenseUseOmniFunc = 1

 "----------------------------------------------ruby コード補完プラグイン
 



 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'moll/vim-node'
 NeoBundle 'mattn/jscomplete-vim'
 :setl omnifunc=jscomplete#CompleteJS

 NeoBundle 'myhere/vim-nodejs-complete'
:setl omnifunc=jscomplete#CompleteJS
if !exists('g:neocomplcache_omni_functions')
		  let g:neocomplcache_omni_functions = {}
  endif
  let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'
  let g:node_usejscomplete = 1

"カラースキームの変更（jellybeans)
"NeoBundle 'nanotech/jellybeans.vim'
"NeoBundle 'tomasr/molokai'
"インデントの深さを視覚化  	
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'

 NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
 NeoBundle 'guileen/vim-node-dict'
 au FileType javascript set dictionary+=~/.vim/bundle/vim-node-dict/dict/node.dict
 NeoBundle 'Townk/vim-autoclose'


 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()


 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

"set background=dark
set number
set tabstop=4
set expandtab
set autoindent 
syntax on
:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"colorscheme molokai
colorscheme jellybeans
set t_Co=256
let g:jellybeans_use_lowcolor_black = 0


