" Plugins
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

Plug 'junegunn/limelight.vim' " For focus

Plug 'junegunn/goyo.vim' " Distraction-free

Plug 'terryma/vim-expand-region' " Selection expansion

Plug 'mbbill/undotree' " Undo history

Plug 'michaeljsmith/vim-indent-object' " New text objects

Plug 'wsdjeg/vim-assembly' " Syntax support for assembly languages

call plug#end()

" Plugins end



" Other settings
lua require('init')

" Other settings end



" Plugin settings

" -- Vim Airline -- "
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.colnr = ''

" -- Vim Tab Line -- "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline#extensions#tabline#close_symbol = ''

" -- Nerdtree -- "
autocmd bufenter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowCollapsible=""
let g:NERDTreeDirArrowExpandable=""
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeShowLineNumbers=1

" -- Tagbar -- "
let g:tagbar_show_linenumbers = 2
let g:tagbar_visibility_symbols = {
	\ 'public'      : '♥ ',
	\ 'protected'   : ' ',
	\ 'private'     : ' '
	\ }

let g:tagbar_iconchars = ['', '']

" -- Indent guide -- "
let g:indent_blankline_show_trailing_blankline_indent = v:false

" -- Fuzzy finder -- "
let g:fzf_layout = { 'window': { 'width': 0.69, 'height': 0.69, 'relative': v:true, 'xoffset': 1.0, 'yoffset': 1.0 } }

" -- Limelight -- "
let g:limelight_default_coefficient = 0.9

" -- Goyo -- "
let g:goyo_width = 104

function! s:disable_distractive_plugs()
    unmap <F3>
    unmap <F4>
    unmap <F12>
    unmap <Leader>h
    unmap <Leader>f
	nnoremap <Leader>l <Cmd>Limelight!!<CR>
endfunction

function! s:enable_distractive_plugs()
	nnoremap <F3> <Cmd>TagbarToggle<CR><Cmd>TagbarTogglePause<CR>
	nnoremap <F4> <Cmd>NERDTreeToggle<CR>
	nnoremap <F12> <Cmd>vsplit term://bash<CR>
	nnoremap <Leader>h <Cmd>vert sview ~/.config/nvim/hotkeys.txt<CR>
	nnoremap <Leader>f <Cmd>FZF ~<CR>
	nunmap <Leader>l
endfunction

au! User GoyoEnter call <SID>disable_distractive_plugs() | Limelight
au! User GoyoLeave call <SID>enable_distractive_plugs() | Limelight!

" -- Undotree -- "
if !exists('g:undotree_WindowLayout')
	let g:undotree_WindowLayout = 3
endif

if !exists('g:undotree_SetFocusWhenToggle')
	let g:undotree_SetFocusWhenToggle = 1
endif

if !exists('g:undotree_TreeNodeShape')
	let g:undotree_TreeNodeShape = ''
endif

if !exists('g:undotree_TreeSplitShape')
	let g:undotree_TreeSplitShape = ''
endif

if !exists('g:undotree_TreeVertShape')
	let g:undotree_TreeVertShape = '⏽'
endif

if !exists('g:undotree_TreeReturnShape')
	let g:undotree_TreeReturnShape = ''
endif

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

let g:undotree_CustomUndotreeCmd = 'vertical 32 new'
let g:undotree_CustomDiffpanelCmd = 'belowright 12 new'

" -- Expand region -- "
call expand_region#custom_text_objects({
    \ 'a]' :1,
    \ 'ab' :1,
    \ 'aB' :1,
    \ 'ii' :0,
    \ 'ai' :0,
    \ })
