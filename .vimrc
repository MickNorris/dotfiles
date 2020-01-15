set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'







" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/SearchComplete'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }



" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'


" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" set number relativenumber
syntax on
set ruler
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set matchpairs+=<:>
set laststatus=2
set autoindent
set cindent
set smartindent
set belloff=all

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

" NerdTree toggle
map <C-o> :NERDTreeToggle<CR>

" ale
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python'    : ['pylint']
\}
" Tabs stuff
set wmw=0
nmap <c-h> <c-w>l<c-w><Bar>
nmap <c-l> <c-w>l<c-w><Bar>



" enable airline colors
set t_Co=256

" set airline theme to deus
let g:airline_theme='ravenpower'

" resize current buffer by +/- 5 
nnoremap <D-left> :vertical resize -5<cr>
nnoremap <D-down> :resize +5<cr>
nnoremap <D-up> :resize -5<cr>
nnoremap <D-right> :vertical resize +5<cr>


" python autocomplete syntax
let g:pymode_python = 'python3'


" Copy/Paste w/ clipboard
set clipboard^=unnamed,unnamedplus

" Sudo save
" command! -nargs=0 Sw w !sudo tee % > /dev/null

"Set clear gutter
 autocmd VimEnter * highlight clear SignColumn
 hi SignColumn ctermbg=232 guibg=#080808




