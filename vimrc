function Pathogen()
    runtime bundle/pathogen/autoload/pathogen.vim
    call pathogen#infect()
    filetype plugin indent on
endfunction

function EditorAppearance()
    set laststatus=2
    set number
    set showtabline=2
    colorscheme wombat
    syntax on
    highlight LineNr ctermfg=white
    highlight Folded ctermfg=white ctermbg=none
endfunction


function DefaultCodingStyle()
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab " keep tabs as spaces 
    autocmd FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8 
endfunction

function EditorBehaviour()
    set backupdir=/tmp

    set title

    set visualbell
    set noerrorbells

    set history=1000
    set undolevels=1000

    set showmatch
    set ignorecase

    set autoindent
    set copyindent
    set foldmethod=indent
    set foldnestmax=2

    set shiftround
    set backspace=indent,eol,start

    set smartcase
    set smarttab

    set hlsearch
    set incsearch

    let g:SuperTabDefaultCompletionType = "context"
endfunction

function KeyMappings()
    map <C-h> <C-w>h
    map <C-l> <C-w>l
    nmap <silent> ,/ :nohlsearch<CR>
    cmap w!! w !sudo tee % >/dev/null
    set pastetoggle=<F10>
endfunction

function TabKeyMappings()
    map <C-k> :tabr<cr>
    map <C-j> :tabl<cr>
    map <C-h> :tabp<cr>
    map <C-l> :tabn<cr>
endfunction

function SplitKeyMappings()
    map <S-k> :wincmd k<CR>
    map <S-j> :wincmd j<CR>
    map <S-h> :wincmd h<CR>
    map <S-l> :wincmd l<CR>
endfunction

function EscapeCommonOperationTypos()
    cmap W w 
    cmap Wq wq 
    cmap WQ wq 
    map <C-n> <TAB>
endfunction

function SyntasticOptions()
    let g:syntastic_c_include_dirs = [ '/usr/local/include', '/usr/local/mysql-5.5.24-osx10.6-x86_64/include' ]
endfunction



call Pathogen()
call EditorAppearance()
call DefaultCodingStyle()
call KeyMappings()
call TabKeyMappings()
call SplitKeyMappings()
call EscapeCommonOperationTypos()
call SyntasticOptions()
