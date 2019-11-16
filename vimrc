" Load the package 'solarized'
" from github in the Users/Usuario folder.

syntax enable

set background=dark

colorscheme solarized

" Load NERDTree on Vim startup.
autocmd vimenter * NERDTree

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Enable line numbers on startup.
set number

" Load pathogen vim-plugins-loader
execute pathogen#infect()

" --INSERT-- is unneccessary because
" the mode information is displayed
" with the lightline plugin.
set noshowmode

" Apply the solarized colorscheme
" to the lightline status bar.
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ]
	\		  [ 'readonly', 'filename', 'modified' ] 
	\ 	],
	\	'right': [ [ 'lineinfo', 'percent' ]
	\		   [ 'fileformat', 'fileencoding', 'filetype' ]
	\	]
	\ },
	\ 'component_function': {
	\	'fileformat' : 'LightlineFileformat',
	\ }
	\ }
	function! LightlineFileformat()
		return winwidth(0) > 90 ? &fileformat : ''
	endfunction
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

