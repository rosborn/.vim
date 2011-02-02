let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
map! <D-v> *
nmap  o
snoremap <silent>  `>a=XPTemplateStart(0)
xnoremap <silent>  "0s=XPTemplatePreWrap(@0)
noremap <silent>   :exe "normal i".nr2char(getchar())
noremap ' `
map Q gq
xmap S <Plug>VSurround
noremap <silent> X :exe "normal a".nr2char(getchar())
xmap [% [%m'gv``
xmap ]% ]%m'gv``
noremap ` '
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
snoremap <Plug>selectToInsert d<BS>
noremap <BS> X
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  =XPTemplateStart(0,{'popupOnly':1})
imap  <Plug>Isurround
inoremap  u
inoremap <silent>  =XPTemplateStart(0)
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set cpoptions=aABceFs$
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guioptions=egmrLt
set helplang=en
set hidden
set history=50
set incsearch
set laststatus=2
set listchars=extends:>,precedes:<,trail:-,tab:>~,eol:â€¢
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set rulerformat=%-14.(%l,%c%V%)%=%P%{XPMautoUpdate(\"ruler\")}
set runtimepath=~/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,~/.vim/personal
set scrolloff=4
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,winsize,winpos
set shiftwidth=4
set showcmd
set sidescrolloff=6
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%03.3b|0x%02.2B]\ [%04l,%04v|%L][%p%%]
set tabstop=4
set termencoding=utf-8
set window=53
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let Tlist_Max_Submenu_Items =  20 
let Tlist_WinWidth =  30 
let Tlist_Enable_Fold_Column =  1 
let Tlist_Close_On_Select =  0 
let Tlist_GainFocus_On_ToggleOpen =  0 
let Tlist_Use_SingleClick =  0 
let Tlist_WinHeight =  10 
let Tlist_File_Fold_Auto_Close =  0 
let Tlist_Auto_Open =  0 
let XPMpreferRight = "r"
let Tlist_Show_One_File =  0 
let Tlist_Auto_Highlight_Tag =  1 
let Tlist_Inc_Winwidth =  1 
let Tlist_Auto_Update =  1 
let Tlist_Display_Tag_Scope =  1 
let Tlist_Compact_Format =  0 
let Tlist_Max_Tag_Length =  10 
let XPMpreferLeft = "l"
let TagList_title = "__Tag_List__"
let Tlist_Use_Horiz_Window =  0 
let Tlist_Exit_OnlyWindow =  0 
let Tlist_Display_Prototype =  0 
let Tlist_Ctags_Cmd = "ctags"
let Tlist_Highlight_Tag_On_BufEnter =  1 
let XPT#let_sid = "map <Plug>xsid <SID>|let s:sid=matchstr(maparg(\"<Plug>xsid\"), \"\\\\d\\\\+_\")|unmap <Plug>xsid"
let Tlist_Show_Menu =  0 
let Tlist_Use_Right_Window =  0 
let Tlist_Process_File_Always =  0 
let Tlist_Sort_Type = "order"
silent only
cd ~/Code/test/Ragel
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +47 Ragel.rl
badd +127 Ragel.c
silent! argdel *
set lines=54 columns=161
winpos 0 0
edit Ragel.rl
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 80 + 80) / 161)
exe 'vert 2resize ' . ((&columns * 80 + 80) / 161)
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%03.3b|0x%02.2B]\ [%04l,%04v|%L][%p%%]%{XPMautoUpdate(\"statusline\")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 47 - ((45 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 013l
wincmd w
argglobal
edit Ragel.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%03.3b|0x%02.2B]\ [%04l,%04v|%L][%p%%]%{XPMautoUpdate(\"statusline\")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 121 - ((31 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
121
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 80 + 80) / 161)
exe 'vert 2resize ' . ((&columns * 80 + 80) / 161)
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
