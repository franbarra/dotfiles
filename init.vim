" Welcome to my vim configuration files

call plug#begin('~/.config/nvim/plugged')

" On demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Gruvbox colorscheme
" Plug 'morhetz/gruvbox'
" autocmd vimenter * colorscheme gruvbox

" Vimtex is a latex utility
Plug 'lervag/vimtex'

" Load ultisnips (snippets of code)
Plug 'sirver/ultisnips'

" Nord colorscheme
Plug 'arcticicestudio/nord-vim'

call plug#end()

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Trigger configuration for ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories=[$HOME.'/Desktop/Universidad/latex/']

" Set flavor of tex for vimtex plugin
let g:tex_flavor = 'latex'
" Set the viewer of vimtex plugin
let g:vimtex_view_method = 'zathura'

" Set the theme
colorscheme nord

set number
set termguicolors

" Remap keys so it is easier to navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
set tabstop=4

" Indents will have a width of 4.
set shiftwidth=4

" Sets the number of columns for a TAB
set softtabstop=4

" Expand TABs to spaces.
set expandtab
