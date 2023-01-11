set nocompatible              " be iMproved, required
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
