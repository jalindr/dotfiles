
 set nocompatible  " be iMproved
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
 syntax on
 filetype off      " required! for something need to find
 let mapleader = "," " set the default mapleader

 Plugin 'gmarik/vundle'	" The King of all plugins
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'tpope/vim-rails.git'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'git://git.wincent.com/command-t.git'
 Plugin 'scrooloose/nerdtree'	" file browser
 Plugin	'flazz/vim-colorschemes'	"	vim  colorschemes
 Plugin	'msanders/snipmate.vim'	"	insert code snipets
 Plugin	'godlygeek/tabular'
 Plugin	'kien/ctrlp.vim'
 Plugin	'tpope/vim-commentary'
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-markdown'
 Plugin 'tpope/vim-endwise'
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 Plugin 'bling/vim-airline'


 " Random Stuff

 set number "set line numbers
 set autoread	" autoread file if changed
 set encoding=utf8 "Unix encoding
 set ruler
 set laststatus=2	" Always show status line
 set cursorline "show cursor line for easy navigation
 set showcmd	" Show command in status line
 set showmatch	" show matching brackets
 set splitbelow	"splits window at bottom
 set scrolloff=7 " keep 4 lines off the edges of the screen when scrolling
 set undolevels=1000 " use many muchos levels of undo
 set title " change the terminal's title
 set hidden   " hide buffers instead of closing them,put current buffer to background
              "without being written and that marks and undo history are preserved
 color 256-jungle
 set backspace=eol,start,indent " Configure backspace so it acts as it should act
 set whichwrap+=<,>,h,l
 " set background=dark

 " No save backup by .swp

 set nowb
 set noswapfile
 set noar

 " WhiteSpace stuff
 set smarttab
 set nowrap
 set tabstop=4 " a tab is four spaces
 set shiftwidth=4 " number of spaces to use for autoindenting
 set softtabstop=4 " when hitting <BS>, pretend like a tab is removed, even if spaces
 set expandtab

 " Searching

 set hlsearch   " highlight search terms
 set incsearch	" Incremental search
 set ignorecase " ignore case when searching
 set smartcase  " ignore case if search pattern is all lowercas, case-sensitive otherwise

 " Enable syntastic syntax checking

 let g:syntastic_enable_signs=1
 let g:syntastic_quiet_messages = {'level': 'warnings'}

" Delete all whitespace in end of line

 autocmd BufWritePre * :%s/\s\+$//e

 "Powerline fonts

 "let g:airline_powerline_fonts = 1

 " NERDTree Config
 map <Leader>n :NERDTreeToggle<CR>

 " Make user real tabs
 au FileType make set noexpandtab

 " md, markdown, and mk are markdown and define buffer-local preview
 au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupWrapping()

 " Load the plugin and indent settings for the detected filetype
 filetype plugin indent on


 """"""""""""""""""""""""""""""""""""""""""""""""
 " Airline

 """"""""""""""""""""""""""""""""""""""""""""""""
 " let g:airline_theme             = 'powerlineish'
 let g:airline_enable_branch     = 1
 let g:airline_enable_syntastic  = 1

 " vim-powerline symbols

 let g:airline_left_sep          = ''
 let g:airline_left_alt_sep      = ''
 let g:airline_right_sep         = ''
 let g:airline_right_alt_sep     = ''
 let g:airline_branch_prefix     = ''
 let g:airline_readonly_symbol   = ''
 let g:airline_linecolumn_prefix = ''

 """"""""""""""""""""""""""""""""""""""""""""""""
 "NERDTree

 """"""""""""""""""""""""""""""""""""""""""""""""



 """"""""""""""""""""""""""""""""""""""""""""""""
 " CtrlP

 """"""""""""""""""""""""""""""""""""""""""""""""
 set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
 let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
 let g:ctrlp_working_path_mode='/'
 "let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' "seems not working
 let g:ctrlp_custom_ignore = {
   \ 'dir':  '\.git$\|\.hg$\|\.svn$\',
   \ 'file': '\.exe$\|\.so$\|\.dll$',
   \ 'link': 'some_bad_symbolic_links',
   \ }
