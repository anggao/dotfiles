" https://github.com/benmccormick/dotfiles/blob/master/vim/vimrc.symlink
"
" Original Author:	 Ben McCormick
" Modified by :      Ang Gao <anggao@me.com>
" Last change:	     2015 Jan 12
"
"  If you don't understand a setting in here, just type ':h setting'.

" Ang's vimrc

" Setup stuff
" ===========

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Shell stuff here

" Set shell to zsh (fish and VIM don't play well together)
set shell=zsh
"Don't dump distracting text to terminal during searches!
set shellpipe=2>/dev/null>


" Plugins here
" =============

"Setup Vundle For Package Management

"Vundle begins here, turn off filetype temporarily
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

"My plugins

" Themes
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'

" Syntax
Plugin 'skammer/vim-css-color'
Plugin 'plasticboy/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'lepture/vim-jinja'


" Functionality

" ### Indispensable
" ctrlp is file fuzzy search
Plugin 'kien/ctrlp.vim'
" Ack.vim uses ack to search within files
Plugin 'mileszs/ack.vim'
"Airline provides a stylish appearance for the styleline
Plugin 'bling/vim-airline'
" Syntastic provides syntax info
Plugin 'scrooloose/syntastic'
"Show git info in the gutter, sad that it and syntastic fight for space though
Plugin 'airblade/vim-gitgutter'
"Integrate with tmux
Plugin 'christoomey/vim-tmux-navigator'
"Provides Sublime-Text like smart completion of braces, parens and such
Plugin 'Raimondi/delimitMate'
"Vim front for ag, the code searching tool similar to ack, with a focus on speed.
Plugin 'rking/ag.vim'
"Session Management with Vim
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" ### Use sometimes

" Nerdtree provides a file explorer, which is sometimes useful. Mostly ctrlp handles file finding though
Plugin 'scrooloose/nerdtree'
" fugitive provides git bindings in Vim.  Don't use too much, but useful for blame
Plugin 'tpope/vim-fugitive'
" Surround is useful for adding surrounding tags to elements (especially html)
Plugin 'tpope/vim-surround'
" Allows vim-surround to be used with . command
Plugin 'tpope/vim-repeat'
"Gives smart completions for Javascript
Plugin 'marijnh/tern_for_vim'
" Provides easy shortcuts for commenting out lines
Plugin 'scrooloose/nerdcommenter'
" Great helpful autocompletion
Plugin 'Valloric/YouCompleteMe'
"Adds convenience stuff for writers
Plugin 'reedes/vim-pencil'
" Allows for different situational Vim themes
Plugin 'reedes/vim-thematic'


" Experimenting with these

"Plugin 'SirVer/ultisnips'
"Plugin 'tpope/vim-unimpaired'


" Not Using anymore/right now
" Plugin 'reedes/vim-colors-pencil'
" Plugin 'altercation/vim-colors-solarized'


"End Vundle
call vundle#end()
"Vundle ended so reenable filetypes
filetype plugin indent on
"Pull in matchit.vim, which is already bundled with Vim
runtime! macros/matchit.vim


" Appearance
" ==========

"We want syntax highlighting in 256 colors
syntax on
syntax enable
set t_Co=256
" Use base-16 for the color scheme, different themes in GUI and terminal
if has('gui_running')
    colorscheme base16-pop
    set background=dark
else
    let base16colorspace=256  " Access colors present in 256 colorspace
"    colorscheme base16-eighties
    colorscheme default
    set background=dark
endif
"Use Source Code Pro for the font
set guifont=Source\ Code\ Pro\ For\ Powerline:h13
set noshowmode                                  " Let airline handle the mode display

" General Config
" ==============

let mapleader='\'               " I just use the default Leader
set encoding=utf-8
set number                      " Line numbers are nice
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set autoread                    " Reload files changed outside vim
set laststatus=2                " Always show status line
set hidden                      " Buffers can exist in the background
set splitright                  " Opens vertical split right of current window
set splitbelow                  " Opens horizontal split below current window
set shortmess=filnxtToOI        " see :help shortmess

" Mouse
" ======

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


" Search Settings
" ===============

set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks


" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Persistent Undo
" ===============

" Keep undo history across essions, by storing in file
" Only works in MacVim (gui) mode
if has('gui_running')
  set undodir=~/.vim/backups
  set undofile
endif


" Indentation and Display
" =======================

" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines

" Highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline 
set cursorline 



" Folds
" =====

set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default


" Completion
" ==========

"set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.bak,*.pyc,*.class     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*


" Scrolling
" =========

" Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1


" Custom commands
" ===============

"Let K be the opposite of J
map K i<Enter><Esc>
"\rr => refresh vimrc
map <leader>rr :source ~/.vimrc<CR>


" Plugin Options
" ==============


" CTRL+P options
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(exe|so|dll|pyc|class)$',
    \ 'dir': 'node_modules\|\.DS_Store$\|\.(git|hg|svn)$'
    \ }
" use the directory you started vim in to search out of
let g:ctrlp_working_path_mode = 0

" Airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Markdown options
let g:vim_markdown_folding_disabled=1

"NerdTree Options
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>
let NERDTreeHijackNetrw=1 "Put Nerdtree into a window

"YouCompleteMe options
"
ret g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion=3

"jinja config
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

"Neocomplete
let g:neocomplete#enable_at_startup = 1

"Thematic

let g:thematic#themes = {
\ 'solarized_light'  : {
\                  'colorscheme': 'solarized',
\                  'background': 'light',
\                  'font-size': 12,
\                  'transparency': 0
\                },
\ 'solarized_dark'  : {
\                  'colorscheme': 'solarized',
\                  'background': 'dark',
\                  'font-size': 12,
\                  'transparency': 0
\                },
\ 'pencil_lite' :{ 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'ruler': 1,
\                  'typeface': 'Source Code Pro Light',
\                  'fullscreen': 0,
\                  'transparency': 0,
\                  'linespace': 6,
\                },
\ }

"ag
" bind K to search word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "*.pyc"
      \ --ignore "*.class"
      \ -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif

" Session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


"pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType text call pencil#init({'wrap': 'hard'})
augroup END


nnoremap <silent> <leader>ps :SoftPencil<cr>
nnoremap <silent> <leader>ph :HardPencil<cr>
nnoremap <silent> <leader>pn :NoPencil<cr>
nnoremap <silent> <leader>pt :TogglePencil<cr>

"Syntax Specific


"Markdown options
let g:vim_markdown_folding_disabled=1

let g:pencil#wrapModeDefault = 'hard'   " or 'soft'


