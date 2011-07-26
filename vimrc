call pathogen#infect()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab
set hidden

if has("vms")
  set nobackup      " do not keep a backup file, use versions instead
else
  set backup        " keep a backup file
  set backupdir=~/.vim/backup
endif
set history=50      " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd	        " display incomplete commands
set incsearch		" do incremental searching

" Command shortcut for editting .vimrc
com Ev e ~/.vim/vimrc

" Set guifont to consolas 12
set gfn=DejaVu\ Sans\ Mono:h12

" Statusline config
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [\%03.3b\|0x\%02.2B]\ [%04l,%04v\|%L][%p%%]
set laststatus=2

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Remap Shift-Return to add a newline.
nmap <CR> o<Esc>

" Remap Space to insert a single character.
noremap <silent> <space> :exe "normal i".nr2char(getchar())<CR>

" Remap Delete to X
noremap <BS> X

" Remap x to append a single character
noremap <silent> X :exe "normal a".nr2char(getchar())<CR>

" When changing, show $ to delimit edit.
set cpoptions+=$

" Switch quote and backtick
noremap ' `
noremap ` '

" XPTemplate variables
let g:xptemplate_vars ='author=Richard Osborn&email=richardosborn@mac.com&BRfun= '

" Center window after repeating a /? search
nnoremap n nzz
nnoremap N Nzz

" Set the look of hidden characters
set lcs=extends:>,precedes:<,trail:-
set lcs+=tab:>~
set lcs+=eol:•

" Set the minimal number lines above and below the cursor
set scrolloff=4

" Set minimal number of lines to the left and right of the cursor
set sidescrolloff=6

" Command Sh shows hidden characters
com Sh set list!

" Set Session Options
set ssop=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,winsize,winpos

" Command Ms creates a session in ~/.vim/sessions
com -nargs=1 Ms mks ~/.vim/sessions/<args>.vim

" Command Os opens a session saved in ~/.vim/sessions
com -complete=custom,ListSessions -nargs=1 Os so ~/.vim/sessions/<args>
fun ListSessions(A,L,P)
    return system("ls ~/.vim/sessions/")
endfun

" Command Ss saves current session
com Ss wa<Bar>exe "mksession! " . v:this_session

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set nohls
  set go-=T
endif

set number

filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                  \ | wincmd p | diffthis
endif
