
set nocompatible              " be iMproved, required
filetype off                  " required

" All of your Plugins must be added before the following line
filetype plugin indent on    " required
"
function! EditorAppearance()
    syntax on
    set laststatus=2
    set number
    set showtabline=2
    set t_Co=256
    colorscheme molokai
    set cursorline
    set fillchars=  " split char
endfunction

function! EditorBehaviour()
    filetype plugin indent on
    set backupdir=/tmp
    set directory=/tmp
    set title
    set visualbell
    set noerrorbells
    set history=1000
    set undolevels=1000
    set showmatch
    set ignorecase
    set autoindent
    set copyindent
    set shiftround
    set backspace=indent,eol,start
    set smartcase
    set smarttab
    set hlsearch
    set incsearch
    set mouse=a  " enable mouse
    set scrolloff=10  " top/bottom padding when scrolling

    " remove trailing whitespace automatically when saving
    autocmd FileType c,cpp,java,php,python,javascript
            \ autocmd BufWritePre <buffer> :%s/\s\+$//e

    " reload vimrc after update
    autocmd BufWritePost .vimrc so ~/.vimrc

    " recognize files
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.launch set filetype=xml
    autocmd BufRead,BufNewFile *.pde set filetype=arduino
    autocmd BufRead,BufNewFile *.ino set filetype=arduino
    au BufNewFile,BufRead *.cpp set syntax=cpp11

    " plain text mode
    autocmd FileType text,markdown call PlainText()
    autocmd BufNewFile,BufRead *.tex call PlainText()

    " reselect block after indentation
    vnoremap < <gv
    vnoremap > >gv

    " restore cursor's last position in file
    autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

    " highlight non-ascii characters
    set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•

    " softwrap lines
    command! -range=% SoftWrap
                \ <line2>put _ |
                \ <line1>,<line2>g/.\+/ .;-/^$/ join |normal $x

    " scroll to top when jusing jump-to in ctags
    nnoremap <C-]> <C-]>zt
    nnoremap <C-t> <C-t>zt

endfunction

function! DefaultCodingStyle()
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab " expand tabs as spaces
    autocmd FileType c setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4

    " highlight red when code is over 80 columns
    augroup vimrc_autocmds
        autocmd BufEnter * highlight OverLength ctermbg=darkgrey
        autocmd BufEnter * match OverLength /\%80v.*/
    augroup END
endfunction

function! CommandModeKeyMappings()
    map <C-h> <C-w>h
    map <C-l> <C-w>l
    map <S-x> :wq<CR>
    cmap w!! w !sudo tee % >/dev/null
    nmap <silent> ,/ :nohlsearch<CR>

    nnoremap <F3> :NERDTreeToggle<CR><CR>
    set pastetoggle=<F10>
    map <F12> :!dot % -Tps -o %:r.ps<CR>

    " run script file
    map <S-r> :!clear && bash run.sh<CR>
endfunction

function! NavImproved()
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk
endfunction

function! VimTabsKeyMappings()
    map <C-k> :tabr<cr>
    map <C-j> :tabl<cr>
    map <C-h> :tabp<cr>
    map <C-l> :tabn<cr>
endfunction

function! VimSplitsKeyMappings()
    map <S-k> :wincmd k<CR>
    map <S-j> :wincmd j<CR>
    map <S-h> :wincmd h<CR>
    map <S-l> :wincmd l<CR>
endfunction

function! HeaderSwitchMappings()
    nnoremap <F7> :vsplit<CR>:FSLeft<CR>
    nnoremap <F8> :FSHere<CR>
    nnoremap <F9> :vsplit<CR>:FSRight<CR>
endfunction

function! EscapeCommonOperationTypos()
    cmap Wq wq
    cmap WQ wq
    map <C-n> <TAB>
endfunction

function! GVimSpecific()
    set guioptions-=m   " remove menubar
    set guioptions-=T   " remove toolbar
    set guifont=Monospace:h7

    " remove scroll bars - right, left, bottom
    set guioptions-=r
    set guioptions-=l
    set go-=L
    set guioptions-=b
endfunction

function! PlainText()
    " spell checker
    set spell
    set spelllang=en_gb

    " do not highlight extra whitespace
    autocmd ColorScheme * highlight ExtraWhitespace ctermbg=None guibg=None

    " hardwrap ignore lines starting with variable "-", "=", "#", "\"
    set comments+=n:--,n:==,n:#,n:\

    " hardwrap shortcut keys
    nnoremap <F4> :set formatoptions+=a<CR>
    nnoremap <F2> :set formatoptions-=a<CR>
endfunction

function! Pathogen()
    execute pathogen#infect()
endfunction

function! SyntasticOptions()
    " c specific settings
    let g:syntastic_c_config_file = '.syntastic_config'
    let g:syntastic_enable_highlighting=1
    let g:syntastic_check_on_open=1
    let g:syntastic_enable_signs=1
    let g:syntastic_c_include_dirs=[
        \ 'include',
        \ '/usr/include',
        \ '/usr/local/include',
    \ ]

    let g:syntastic_cpp_include_dirs=[
        \ 'src',
        \ 'resources/dynamicvoronoi/src'
    \ ]

    " python specific settings
    let g:syntastic_python_checkers=['flake8']
    " let g:syntastic_ignore_files = ['\.py$']

    " warning and error symbols
    let g:syntastic_warning_symbol='W'
    let g:syntastic_error_symbol='E'
    let g:syntastic_style_error_symbol='SE'
    let g:syntastic_style_warning_symbol='SW'
    " let g:syntastic_cpp_compiler = 'clang++'
    let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
    let g:jedi#documentation_command = "D"
    let g:jedi#popup_on_dot = 0
endfunction


function! Powerline()
    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
    " Disable a 1 second delay when leaving insert mode
    if ! has('gui_running')
        set ttimeoutlen=10
        augroup FastEscape
            autocmd!
            au InsertEnter * set timeoutlen=0
            au InsertLeave * set timeoutlen=1000
        augroup END
    endif
endfunction

function! NerdTree()
    let g:NERDTreeWinSize=30 " set NerdTree size
    let g:NERDTreeWinPos='left'

    " if NerdTree is last thing open in vim, close vim completely
    autocmd bufenter * if (
            \ winnr("$") == 1
            \ && exists("b:NERDTreeType")
            \ && b:NERDTreeType == "primary")
            \ | q |
    \ endif
endfunction

function! Taglist()
    let g:Tlist_WinWidth=50
    let g:Tlist_Use_Right_Window=1
    nnoremap <silent> <F6> :TlistToggle<CR>
endfunction

function! PythonMode()
    let g:pymode_lint = 1
    let g:pymode_folding = 0
    let g:pymode_doc = 0
    let g:pymode_lint_on_fly = 0
    let g:pymode_rope_completion = 0
endfunction

function! Session()
    " Save session on quitting Vim
    if argc() == 0 && filereadable(".git/config")
        autocmd VimLeave * NERDTreeClose
        autocmd VimLeave * mksession! .git/session.vim
    endif
    " Restore session on starting Vim
    if argc() == 0 && filereadable(".git/session.vim")
        autocmd VimEnter * source .git/session.vim
    endif
    " autocmd VimEnter * NERDTree
endfunction

" MAIN
call Pathogen()
call EditorAppearance()
call EditorBehaviour()
call CommandModeKeyMappings()
call DefaultCodingStyle()
call NavImproved()
call VimTabsKeyMappings()
call HeaderSwitchMappings()
call EscapeCommonOperationTypos()
call GVimSpecific()
call Session()

" PLUGIN SETTINGS
call Powerline()
call SyntasticOptions()
" call YouCompleteMe()
call NerdTree()
call Taglist()
call PythonMode()

let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_doc_keywordprg_enabled = 0

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <F5> :<C-u>call <SID>build_go_files()<CR>

call VimSplitsKeyMappings()
nnoremap <S-k> :wincmd k<CR>
autocmd VimResized * wincmd =
