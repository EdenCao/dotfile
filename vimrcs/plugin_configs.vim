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
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' } "add TypeScript language service

""Deoplete VimL support
Plug 'Shougo/neco-vim'
call plug#end()


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


"""Deoplete
let g:deoplete#enable_at_startup = 1


"""Denite
map <leader>o :Denite buffer<cr>
