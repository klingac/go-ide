syntax on
set nocompatible              " be iMproved, required
set showmatch
set autoindent
set smartindent
set number
set shiftwidth=4
set wildmenu
set term=screen-256color
"set cursorcolumn
set showbreak=↪\·
set encoding=UTF-8
set foldcolumn=2
set mouse=a
set background=dark

" https://til.hashrocket.com/posts/b94bf7e2e6-vim-configuration-files-by-directory
set exrc
set secure
let g:bufferline_echo = 0

set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→
" set listchars=tab:\┊\ ,extends:›,precedes:‹,nbsp:·,trail:·
set listchars=tab:▸\ ,extends:›,precedes:‹,nbsp:·,trail:·
set statusline+=%{FugitiveStatusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%{bufferline#refresh_status()}
set statusline+=%*

filetype off                  " required
let mapleader = ","

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
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'MarSoft/nerdtree-grep-plugin'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'shumphrey/fugitive-gitlab.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'pearofducks/ansible-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'w0rp/ale'
Plugin 'jreybert/vimagit'
" Plugin 'valloric/youcompleteme'
Plugin 'idanarye/vim-merginal'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/vim-slumlord'
Plugin 'aklt/plantuml-syntax'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'andrewradev/splitjoin.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'mattn/calendar-vim'
Plugin 'tpope/vim-speeddating'
Plugin 'chun-yang/vim-action-ag'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'rhysd/git-messenger.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'yggdroot/indentline'
" Plugin 'bling/vim-bufferline'
" Plugin 'b4b4r07/vim-ansible-vault'
" Plugin 'arouene/vim-ansible-vault'
Plugin 'https://github.com/danihodovic/vim-ansible-vault.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" NERDTree shortcuts
nmap <leader>ne :NERDTreeToggle<cr>
map <silent> <C-t> :NERDTreeFocus<CR>
nmap <leader>n :NERDTreeFind<CR>

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" map <F4> :execute " grep -srnw --binary-files=without-match --exclude=*.log --exclude-dir=.git --exclude-from=exclude.list . -e " . expand("<cword>") . " " <bar> cwindow<CR>
" map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
" map <F4> :execute "Ag " . expand("<cword>") . " " <Bar> cw<CR>
map <F4> :execute "Rg " . expand("<cword>") . " " <Bar> cw<CR>

nmap <leader>ad :r ! ansible-doc -s template

"highlight trailing whitespace
match ErrorMsg '\s\+$'
" kill trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

let g:gruvbox_contrast_dark='hard'
" colorscheme jellybeans
colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1
autocmd BufWritePost * GitGutter

let $PATH = "/home/klingac/go/bin/gorename".$PATH
let $GOPATH = "/home/klingac/go"

" source /usr/share/doc/fzf/examples/fzf.vim

autocmd FileType go nmap <leader>t  <Plug>(go-test)

" Include DokuVimKi Configuration
if filereadable($HOME."/.vim/dokuvimkirc")
  source $HOME/.vim/dokuvimkirc
endif

set guioptions+=m

