"My perfect VIM Config by Alex N."

set nocompatible                "Use Vim settings, rather than Vi settings
filetype off                    "required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()               " required
filetype plugin indent on       "required!
set backspace=indent,eol,start  "allow backspacing over everything in insert mode
set history=50                  "keep 50 lines of command line history
set ruler                       "show the cursor position all the time
set showcmd                     "display incomplete commands
set incsearch                   "do incremental searching
set nu                          "show line numbers
set expandtab                   "use spaces instead of tabs
set tabstop=4                   "insert 4 spaces whenever the tab key is pressed
set shiftwidth=4                "set indentation to 4 spaces
set hlsearch                    "highlight search terms
set ic                          "Ignore Case during searches
set autoindent                  "start new line at the same indentation level
syntax enable                   "syntax highlighting
set cmdheight=1                 "The commandbar height
set showmatch                   "Show matching bracets when text indicator is over them
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files.
set ttimeoutlen=50              "Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file
set wildmode=longest,list       " Pressing <Tab> shows command suggestions similar to pressing <Tab>
set laststatus=2                " Solves lightline not showing

" Mappings to traverse buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
"Easy expansion of the active file directory
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'
"Shortcut to Mute Highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
"Root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %
"To use the Solarized Dark Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
