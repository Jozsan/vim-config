" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

let mapleader = "\<Space>"
"--------------- KEY MAPING ------------------"
" Easyer movement between windows :
nmap <leader><Down> <C-w><Down>
nmap <leader><Up> <C-w><Up>
nmap <leader><Left> <C-w><Left>
nmap <leader><Right> <C-w><Right>
"Alias leader e to display NerdTree"
nmap <leader>e :NERDTreeToggle<CR>
"Tabs Navigation"
nmap <C-Right> :bnext<CR>
nmap <C-Left>  :bprevious<CR>
" Indents Rules
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set number
set smartindent
set autoindent
set ruler
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
colorscheme turtles
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
" ---- Plugin Section ------"
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-airline/vim-airline.git' "Statusbar
Plug 'vim-airline/vim-airline-themes' "Statusbar theme plugin
Plug 'beigebrucewayne/Turtles' "Statusbar theme turtle
Plug 'scrooloose/nerdtree' "File Tree
Plug 'scrooloose/nerdcommenter' "Auto comment plugin
Plug 'honza/vim-snippets' "Autocompletion
Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-buftabline'
Plug 'posva/vim-vue'
Plug 'reewr/vim-monokai-phoenix'
call plug#end()
" ---- End plugin section ----"
