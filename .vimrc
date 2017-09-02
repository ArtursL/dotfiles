execute pathogen#infect()
let base16colorspace=256
colorscheme base16-default-dark
let g:AirlineTheme="base16_default"
let g:airline_powerline_fonts = 1

set number
set ignorecase
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set list
set nowrap
set mouse=a
set guifont="Hack Regular 9"
set guioptions-=T
set showcmd
set cursorline
set wildmenu
set lazyredraw
set hlsearch

syntax on
filetype plugin indent on

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=17
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=18

let g:vim_json_syntax_conceal = 0

let g:UltiSnipsExpandTrigger="<tab>"
au FileType gitcommit startinsert
au FileType gitrebase startinsert
let g:tmuxline_powerline_separators = 1


" Fix mouse resizing in tmux:
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set up persistent undo
let vimDir = '$HOME/.vim'
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undo')
    " Create dirs
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

let g:vim_markdown_folding_disabled = 1
