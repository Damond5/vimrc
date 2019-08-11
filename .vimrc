if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"Plug 'lazywei/vim-matlab'
"Plug 'itakeshi/matlab.vim'
"Plug 'tpope/vim-surround'
"Plug 'raimondi/delimitmate'
"Plug 'tpope/vim-sensible'
"Plug 'stevearc/vim-arduino'
"Plug 'xorit/vim-scl'"
"Plug 'othree/html5.vim'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'majutsushi/tagbar'
"Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'yggdroot/indentline'
Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'myusuf3/numbers.vim'
Plug 'de-vri-es/vim-urscript'
"Plug 'artur-shaik/vim-javacomplete2'


"if has('nvim')
""  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
""  Plug 'Shougo/deoplete.nvim'
""  Plug 'roxma/nvim-yarp'
""  Plug 'roxma/vim-hug-neovim-rpc'
"endif



" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Initialize plugin system
call plug#end()


syntax enable
set t_Co=256
set background=dark
colorscheme solarized
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
setlocal sw=4 
setlocal ts=4

source $VIMRUNTIME/macros/matchit.vim
" set autoindent
" set smartindent
"set cindent
filetype plugin indent on
"filetype indent on
"filetype plugin on
"

"set list
"set listchars=tab:\|\ 

"autocmd BufEnter *.m    compiler mlint

set number
"highlight LineNr ctermfg=#839496 ctermbg=base03
highlight clear LineNr
highlight clear SignColumn

set cursorline

set breakindent

set tabstop=2
set shiftwidth=2
set expandtab

set encoding=utf-8

""Keymaps
"inoremap <C-l> <C-o>A

""Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"ALE
let g:ale_fixers = {
\		'python': ['autopep8'],
\		'lua': ['autopep8'],
\}
let g:ale_linters = {'java': ['javac']}
let g:ale_python_flake8_options='--ignore=E225,E402,E501,W503'
let g:ale_python_autopep8_options='--ignore=E24,W503'
let g:ale_python_mypy_options='--ignore-missing-imports'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_cache_executable_check_failures = 1

"Indentlines
"let g:indentLine_enabled = 1
"set lcs=tab:\|\ 
"set list
"hi SpecialKey ctermbg=grey

"Deoplete
"let g:deoplete#enable_at_startup = 1


""Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"
"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
"" AutoComplPop like behavior.
""let g:neocomplete#enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplete#enable_auto_select = 1
""let g:neocomplete#disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"SNIPPETS
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-enter>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""PYTHON MODE
"let g:pymode = 1
"let g:pymode_paths = []
"let g:pymode_options = 1
"let g:pymode_python = 'python3'

""JAVACOMPLETE2
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
"imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

augroup filetypedetect
    au BufRead,BufNewFile *.aubo setfiletype lua
    au BufRead,BufNewFile *.aubo let g:ale_python_autopep8_options='--ignore=E24,W503,E101,E11,E121'
    " associate *.foo with php filetype
augroup END
