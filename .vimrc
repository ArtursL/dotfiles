execute pathogen#infect()

set number
set ignorecase
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set list

syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 0

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=17
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=18

let g:vim_json_syntax_conceal = 0

let g:UltiSnipsExpandTrigger="<tab>"
