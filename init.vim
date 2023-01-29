
" --- Just Some Notes ---

" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-pyright
" :CocInstall coc-browswer
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
"
" :%s/\r//g Delete all ^M (\r) from copying outside of NVIM
"
" inoremap = insert mode remapping
" nnoremap = normal mode remapping
" tnoremap = terminal mode remapping





" Plugin Calls Begin

call plug#begin()

Plug 'tpope/vim-surround' " For surrounding a selection

Plug 'vim-airline/vim-airline' " Prettier status bar
Plug 'vim-airline/vim-airline-themes' " Status bar extra themes

Plug 'rafi/awesome-vim-colorschemes' " More themes

Plug 'sheerun/vim-polyglot' " Language Packs

Plug 'ap/vim-css-color' " Preview CSS Color

Plug 'preservim/tagbar' " Better code Navigation
Plug 'preservim/nerdtree' " Directory Navigation

Plug 'ryanoasis/vim-devicons' " Enable icons for windows and status bar

Plug 'tpope/vim-commentary' " Auto comment using gcc, gc, gcap commands

Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi cursors

Plug 'https://github.com/tpope/vim-fugitive' " Vim Fugitive for Github inside nvim

Plug 'lukas-reineke/indent-blankline.nvim' " Indention guides

Plug 'https://github.com/sainnhe/everforest' " Colorscheme

Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } } " Fuzzy finder for NVIM

call plug#end()

" Plugin Calls End




" Custom Editor Preferences Begin

syntax on
set encoding=utf-8
set clipboard=unnamedplus
set mouse=a
set number relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set wrap | setlocal wrap

set termguicolors

set spell
set signcolumn=no
set completeopt=menu,menuone,preview

set splitright
set splitbelow

set notimeout

colorscheme gruvbox

" Custom Editor Preferences End





" Advanced Custom Editor Preferences Begin

" " Terminal Custom
aug TermCustom
	au!
	au TermOpen * startinsert | setlocal list
aug end

" " Dynamic Line Numbering
aug DynamicLineNumbering
	au!
	au InsertEnter <buffer> set norelativenumber | au InsertLeave <buffer> set relativenumber
aug end

" " Match Pairs
set mps+=<:>

" " Vim Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols= {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.colnr = ''

" " Vim Tab Line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline#extensions#tabline#close_symbol = ''

" " Preservim NERDTree
autocmd bufenter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowCollapsible=""
let g:NERDTreeDirArrowExpandable=""
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeShowLineNumbers=1

" " Preservim Tagbar
let g:tagbar_show_linenumbers = 2
let g:tagbar_visibility_symbols = {
	\ 'public'      : '♥ ',
	\ 'protected'   : ' ',
	\ 'private'     : ' '
	\ }

let g:tagbar_iconchars = ['', '']

" " Indent-blankline
let g:indent_blankline_show_trailing_blankline_indent = v:false

" " Fuzzy Finder
let g:fzf_layout = { 'window': { 'width': 0.69, 'height': 0.69, 'relative': v:true, 'xoffset': 1.0, 'yoffset': 1.0 } }

" Advanced Custom Editor Preferences End




" Custom Key Bind Begin

" " Completion Hotkeys
inoremap <A-.> <C-N>
inoremap <A-,> <C-P>
inoremap <A-Space> <C-e>

" " Line Manipulation
nmap <Leader>o <Cmd>move +1<CR>
nmap <Leader>p <Up><Cmd>move +1<CR><Up>
nmap <Leader>; 0 yy p

" " Overriding J and K Movements
nnoremap j gj
nnoremap k gk

" " Terminal
nnoremap <F12> <Cmd>vsplit term://bash<CR>

" " Preservim Tagbar
nnoremap <F3> <Cmd>TagbarToggle<CR><Cmd>TagbarTogglePause<CR>

" " Preservim NERDTree
nnoremap <F4> <Cmd>NERDTreeToggle<CR>

" " Window Navigation
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
tnoremap <A-x> <C-\><C-N><C-w>o
tnoremap <A-q> <C-\><C-N><C-w>q
tnoremap <A-w> <Cmd>w<CR>
tnoremap <A-`> <C-\><C-N><C-w>w
tnoremap <A-=> <C-\><C-N><C-w>=
tnoremap <A-H> <C-\><C-N><C-w>H
tnoremap <A-J> <C-\><C-N><C-w>J
tnoremap <A-K> <C-\><C-N><C-w>K
tnoremap <A-L> <C-\><C-N><C-w>L
tnoremap <A-n> <C-\><C-N>

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-x> <C-\><C-N><C-w>o
inoremap <A-q> <C-\><C-N><C-w>q
inoremap <A-w> <Cmd>w<CR>
inoremap <A-`> <C-\><C-N><C-w>w
inoremap <A-=> <C-\><C-N><C-w>=
inoremap <A-H> <C-\><C-N><C-w>H
inoremap <A-J> <C-\><C-N><C-w>J
inoremap <A-K> <C-\><C-N><C-w>K
inoremap <A-L> <C-\><C-N><C-w>L

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-x> <C-w>o
nnoremap <A-q> <C-w>q
nnoremap <A-w> <Cmd>w<CR>
nnoremap <A-`> <C-w>w
nnoremap <A-=> <C-w>=
nnoremap <A-H> <C-w>H
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
nnoremap <Leader>' <Cmd>q!<CR>

" " Tab Navigation
nmap <A-r> <Cmd>tabn<CR>
nmap <A-e> <Cmd>tabp<CR>
nmap <Leader>q <Cmd>tabc!<CR>
nmap <Leader>w <Cmd>tabo!<CR>
nmap <Leader>z <Cmd>tab ba<CR>
nmap <Leader>x <Cmd>vert ba<CR>

" " Buffer Navigation
nmap <Leader>] <Cmd>bn<CR>
nmap <Leader>[ <Cmd>bp<CR>
nmap <Leader>- <Cmd>bd!<CR>

" " Diff Mode
nmap <F7> <Cmd>windo diffthis<CR>
nmap <F7> <Cmd>diffoff<CR>

" " Help Hotkeys
nnoremap <Leader>h <Cmd>vert sview ~/.config/nvim/hotkeys.txt<CR>

" " Fuzzy Finder
nnoremap <Leader>f <Cmd>FZF ~<CR>

" Custom Key Bind End






" Programming Templates

" " C
aug CTemplate
	au!
	au BufNewFile *.c 0r ~/.programmingTemplates/C/standardTemplate.c
	au BufNewFile *.h 0r ~/.programmingTemplates/C/headerFileTemplate.h | %s/<$fnameHash$$?>/\=toupper(substitute(expand("%:t:r"), ' ', '_', 'g'))/
aug end

" " CPP
au BufNewFile * 
	\ if match(expand('%:t'), '^cmp.*\.cpp$') == 0 |
	\	0r ~/.programmingTemplates/CPP/competitiveTemplate.cpp |
	\ elseif match(expand('%:t'), '.*\.cpp$') == 0 |
	\	0r ~/.programmingTemplates/CPP/standardTemplate.cpp |
	\ endif

" " Java
au BufNewFile *
	\ if match(expand('%:t'), '.*Main\.java') == 0 |
	\	0r ~/.programmingTemplates/Java/standardClassTemplate.java | %s/<$fnameHash$$?>/\=expand("%:t:r")/ |
	\ elseif match(expand('%:t'), '.*\.java') == 0 |
	\	0r ~/.programmingTemplates/Java/classTemplate.java | %s/<$fnameHash$$?>/\=expand("%:t:r")/ |
	\ endif

" " Python
au BufNewFile *.py 0r ~/.programmingTemplates/Python/standardPythonTemplate.py | %s/<$fnameHash$$?>/\=expand("%:t:r")/

" " Entering a programming file

" E486 - Error code for searching a pattern that could not be found
function! CursorToMainF()
	try
		execute '/main('
		normal n
		execute '/{'
		normal jA
	catch /^Vim\%((\a\+)\)\=:E486/
		echo "Main method not found"
	endtry
endfunction

function! WelcomeMessage()
	if bufnr("%") == bufnr("$") && bufname("%") != '' && !&readonly
		let message = "You are now editing "
		let file_extension = toupper(fnamemodify(bufname("%"), ':e'))
		let first_letter = substitute(file_extension, '\(.\).*', '\1', '')
		if first_letter =~ '^[aeiouAEIOU]'
			echo message . "an " . file_extension . " file! "
		else
			echo message . "a " . file_extension . " file! "
		endif
	endif
endfunction


aug EnteringAFile
	au!
	au BufEnter <buffer> if expand("%:t") != "init.vim" | call CursorToMainF() | endif
	au BufEnter * call WelcomeMessage()
aug end
