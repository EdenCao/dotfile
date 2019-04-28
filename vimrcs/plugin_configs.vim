"""Vim Plug Install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""Vim Plug list
call plug#begin('~/.vim/plugged')
""material theme
Plug 'kristijanhusak/vim-hybrid-material'

""vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""Nerd Tree
Plug 'scrooloose/nerdtree'

""Auto pairs
Plug 'jiangmiao/auto-pairs'

"""Yank Stack
Plug 'maxbrunsfeld/vim-yankstack'

"""jsx/tsx language support
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'jsx', 'typescript'] }

"""Emmet
Plug 'mattn/emmet-vim', { 'for': ['jsx', 'html', 'css', 'typescript'] }

"""Ale(offer language syntax checking)
Plug 'w0rp/ale'

""Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/denite.nvim' "Add denite feature

""Deoplete TypeScript Support
Plug 'HerringtonDarkholme/yats.vim' "add TypeScript syntax support

Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }   "add TypeScript language service to also js/jsx/ts/tsx

""Deoplete JavaScript Support
Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }

""Deoplete VimL support
Plug 'Shougo/neco-vim'
call plug#end()

"""Deoplete
let g:deoplete#enable_at_startup = 1


"""Vim Hybrid Material
let g:enable_bold_font = 1
let g:enable_italic_font = 1

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme hybrid_material


"""Vim Airline
let g:airline_theme = "hybrid"


"""NerdTree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""Yank Stack
let g:yankstack_yank_keys = ['y', 'd']
nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste


"""Denite
map <leader>o :Denite buffer<cr>


"""Ale 
" config linter of specified language,
" removed eslint for typescript because ale not support yet: https://github.com/w0rp/ale/issues/668
let g:ale_linters = {
\ 'typescript': ['tsserver', 'typecheck', 'tslint'], 
\ 'javascript': ['tsserver', 'prettier', 'eslint'],
\ 'python': ['flake8'],
\ 'go': ['go', 'golint', 'errorcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0


"""Emmet install
let g:user_emmet_install_global=0
let g:jsx_ext_required=0

" Set JavaScript and Typescript jsx works
let g:user_emmet_settings = {
\ 'typescript': {
\   'extends': 'jsx',
\ }
\}

autocmd FileType html,css,jsx,tsx EmmetInstall
" Set <Tab> to trigger emmet
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"""Deoplete Ternjs
"Whether to include the types of the completions in the result data
let g:deoplete#sources#ternjs#types = 1

"Whether to include the distance (in scopes for variables, in prototypes for properties) 
"between the completions and the origin position in the result data.
let g:deoplete#sources#ternjs#depths=1

"Whether to include documentation strings (if found) in the result data
let g:deoplete#sources#ternjs#docs = 1

"Whether to include JavaScript keywords when completing something that is not a 
" property
let g:deoplete#sources#ternjs#include_keywords = 1

" Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
\  'jsx',
\  'javascript.jsx',
\  'vue',
\]
