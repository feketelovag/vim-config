set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
" backspace and cursor keys wrap to previous/next line
"behave mswin

" Set <BS> behaviour to delete over indent, eol, and start place of insert mode
set backspace=indent,eol,start 

" keep xxx lines of command line history
set history=200

" Initialize pathogen plugin
call pathogen#infect() 
call pathogen#helptags()

" set diffexpr=MyDiff()
" function MyDiff()
  " let opt = '-a --binary '
  " if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  " if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  " let arg1 = v:fname_in
  " if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  " let arg2 = v:fname_new
  " if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  " let arg3 = v:fname_out
  " if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  " let eq = ''
  " if $VIMRUNTIME =~ ' '
    " if &sh =~ '\<cmd'
      " let cmd = '""' . $VIMRUNTIME . '\diff"'
      " let eq = '"'
    " else
      " let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    " endif
  " else
    " let cmd = $VIMRUNTIME . '\diff'
  " endif
  " silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction

" Don't create backup files
set nobackup

set showcmd

" if expandtab would be on, use 4 char wide spaces for indentation
set shiftwidth=4
set softtabstop=4

" Tab is 4 char wide
set tabstop=4 

" Always show a statusline in the window
set ls=2

" Always show cursor positions on the bottom of window
" The set stl option handles this, so we don't need it.
"set ruler

" Turn screen into negative if cursor wants to go out of range
set visualbell t_vb=

" VIM goes to silent mode... (it won't beep)
set noerrorbells

" Show relative line numbers
set rnu 

" Show relative numbers
"set rnu

" Case insensitive search
set ignorecase 

" But case sensitive search when we entered at least one uppercase character
set smartcase

" Show matching bracket (default for 5/10sec, can be set with [set matchtime]
set sm

" Show matching bracket for 1/10th sec
set matchtime=1

" Don't warp lines
set nowrap

" Enable syntax highlighting
syntax enable

" Hide the mouse while typing
set mousehide

" Allow cursor to be positioned anywhere. Even invalid positions are allowed.
set virtualedit=all

" Make command line completion better
set wildmenu

" Make it easier to complete buffers, open files, etc...
"set wildignorecase

" When completing by tag, show the whole tag (example function prototype), not just the function name
set showfulltag

" Indent automatically depending on filetype
filetype on
filetype indent on
filetype plugin on
set autoindent

" search from the beginning of file if we were at the end.
set wrapscan

" Shortcut to rapidly toggle `set list`
" nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
" set listchars=tab:¸\ ,eol:¬
"Invisible character colors
" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

" set guifont=Courier\ New:h10
"set LANG=en_US.utf8
"set LC_CTYPE=hu_HU.utf8
"set LC_COLLATE=C

" Octave Syntax 
" augroup filetypedetect 
"     au! BufRead,BufNewFile *.m setfiletype octave 
" augroup END 

" Set window position to (x,y) pixels
" Doesn't work well with tmux
"winpos 750 80
"set lines=50 columns=140

" Setup backup file dir
"set backupdir=c:\Temp\vim\backup

" Setup swapfile dir
"set directory=c:\Temp\vim\swap

" update swapfile in every 5 min or 500 written chars
"set updatetime=300000
"set updatecount=1000

" Disable swapping
set noswapfile

" Remove mapping of CTRL+Y defined in mswin.vim
" so ^y will behave as Scroll-up one line
"unmap <C-Y>

" nnoremap <silent><S-j> <C-w>j

" Use the system's clipboard, instead of vim, 
" to allow copy/paste between different applications
set clipboard=unnamed

" Turn off blinking cursors
" set guicursor=a:blinkon0
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175 

"set guifont=Consolas:h10
if has("win32") || has("win64")
	set guifont=Envy\ Code\ R:h10
else
	"set guifont=Monospace\ 10
	set guifont=Envy\ Code\ R\ 10
endif

" num of colors in terminal
set t_Co=256

" some handy font face and size mappings
nnoremap <S-F9>   :set guifont=Consolas:h9<CR>
nnoremap <S-F10>  :set guifont=Consolas:h10<CR>
nnoremap <S-F11>  :set guifont=Consolas:h11<CR>
nnoremap <S-F12>  :set guifont=Consolas:h12<CR>
nnoremap <C-F9>   :set guifont=Envy\ Code\ R:h9<CR>
nnoremap <C-F10>  :set guifont=Envy\ Code\ R:h10<CR>
nnoremap <C-F11>  :set guifont=Envy\ Code\ R:h11<CR>
nnoremap <C-F12>  :set guifont=Envy\ Code\ R:h12<CR>

" Fuzzy help finder plugin
"nnoremap <C-h> :FufHelp 
nnoremap <Leader>ff :FufFileWithCurrentBufferDir<CR>
nnoremap <Leader>FF :FufFile<CR>
"nnoremap <C-F> :FufFileWithFullCwd<CR>
nnoremap <C-t> :FufTag<CR>

" Enable search highlight
set hlsearch

" Toggle hlsearch with F4
nnoremap <silent><F4> :set hls!<CR>

" Incrementally match the search
set incsearch

" remap jj to <ESC> but only in insert mode
inoremap jj <ESC>
inoremap jk <ESC>

" mappings for switching and for swapping between splitted windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"nnoremap <S-C-h> <C-w>H
"nnoremap <S-C-j> <C-w>J
"nnoremap <S-C-k> <C-w>K
"nnoremap <S-C-l> <C-w>L

set cpoptions+=$

" Allow unsaved buffer go to the background
set hidden

" Use forward slashes in paths instead of backslash
set shellslash

" Edit and reload vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" In normal mode, RebuildHelp will rebuild the help index based on $VIMRUNTIME/docs directory
" :command RebuildHelp :helptags $VIMRUNTIME/doc 

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048


"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <F2> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
nmap <S-F2> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" System default for mappings is now the "," character
let mapleader = ","
" set statusline
set stl=%t\ %m\ %r\ L:%l/%L[%p%%]\ C:%c\ Buf:\ #%n\ [%b][0x%B]\ %y\ %{&ff}\|%{&enc}\ %{fugitive#statusline()}

" map jj to <ESC> only in insert mode
inoremap jj <ESC>

" Delete word only after the cursor in insert mode, then return to insert mode
"inoremap <C-d> <Esc>ldwi

" Delete word around or after the cursor, then return to insert mode
inoremap <C-d> <Esc>lwbdwi

" Set internal encoding to UTF-8 for all files
set encoding=utf-8
set ffs=unix,dos

" go to specific line which contains the word under cursor
:map ,g [I:let nr = input("Jump to: ")<Bar>exe "normal " . nr ."[\t"<CR>


" Display the current line with other color
set cursorline

" Taglist plugin shortcuts
:nnoremap ,T :Tlist<CR>
:nnoremap ,U :TlistUpdate<CR>
:nnoremap ,s :TlistSessionSave tlist<CR>
:nnoremap ,l :TlistSessionLoad tlist<CR>

" Nerdcommenter plugin
" :nnoremap ,c<space> |NERDComToggleComment|
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

" :nnoremap ,cc |NERDComComment|
" Comments out the current line or text selected in visual mode.

" :nnoremap ,cn |NERDComNestedComment|
" Same as |NERDComComment| but forces nesting.

" :nnoremap ,cm |NERDComMinimalComment|
" Comments the given lines using only one set of multipart delimiters if possible.

" :nnoremap ,cs |NERDComSexyComment|
" Comments out the selected lines ``sexily''

" :nnoremap ,c$ |NERDComEOLComment|
" Comments the current line from the cursor to the end of line.

" :nnoremap ,cA |NERDComAppendComment|
" Adds comment delimiters to the end of line and goes into insert mode between them.

" Drupal related settings. Set filetype to php for the following file extensions:
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" Don't update the display while executing macros
" set lazyredraw

" Hide top of window (menu and icons)
set guioptions=acg


" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
" set timeoutlen=500



" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Set count of lines to scroll
" default: 25
set scroll=10

" scroll up/down 1 line when cursor is at top/bottom of screen
set scrolljump=1

" Set the textwidth to be 80 chars
set textwidth=80

" Set automatic wrapping
set formatoptions=croqv

" Don't add 2 spaces when joining lines with top line having . or ! or ?
set nojoinspaces


" Automatically read a file that has changed on disk
set autoread

" set text wrapping toggles
nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>


" Maps to make handling windows a bit easier
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
"noremap <silent> ,sb :wincmd p<CR>
" noremap <silent> <C-F9>  :vertical resize -10<CR>
" noremap <silent> <C-F10> :resize +10<CR>
" noremap <silent> <C-F11> :resize -10<CR>
" noremap <silent> <C-F12> :vertical resize +10<CR>
" noremap <silent> ,s8 :vertical resize 83<CR>
" noremap <silent> ,cj :wincmd j<CR>:close<CR>
" noremap <silent> ,ck :wincmd k<CR>:close<CR>
" noremap <silent> ,ch :wincmd h<CR>:close<CR>
" noremap <silent> ,cl :wincmd l<CR>:close<CR>
" noremap <silent> ,cc :close<CR>
" noremap <silent> ,cw :cclose<CR>
" noremap <silent> <C-7> <C-W>>
" noremap <silent> <C-8> <C-W>+
" noremap <silent> <C-9> <C-W>+
" noremap <silent> <C-0> <C-W>>


" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>il :t.\|s/./-/g\|:nohls<cr>

" correct some common typing mistakes
iab teh the
iab Teh The
iab functino function

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Restore the original number incremet/decrement functionality in normal mode
"unmap <C-a>
"unmap <C-x>

" Code folding settings
" =====================
" Folding for C#
" http://vim.wikia.com/wiki/Syntax-based_folding, see comment by Ostrygen au FileType cs set omnifunc=syntaxcomplete#Complete 
au FileType cs set foldmethod=marker 
au FileType cs set foldmarker={,} 
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',) 
au FileType cs set foldlevelstart=2 

" Folding and unfolding
"map ,f :set foldmethod=indent<cr>zM<cr>
"map ,F :set foldmethod=manual<cr>zR<cr>

set foldopen=insert,jump,block,hor,mark,percent,quickfix,search,tag,undo " These commands open folds

set foldmethod=indent " folds are based on indent level
set foldnestmax=10    " deepest fold is 10 levels
"set foldenable
set nofoldenable      " don't fold by default
set foldlevel=0       " default level of opened folds

" toggle fold open/close with <space>
nnoremap <space> za

" XPTemplate plugin settings
let g:xptemplate_key = '<Tab>'                                            "  snippet triggering key
let g:xptemplate_nav_next = '<Tab>'                                       "  move to the next placeholder in a snippet
let g:xptemplate_key_pum_only = '<S-Tab>'                                 "  open popup menu
let g:xptemplate_pum_tab_nav = 1                                          "  use <Tab> <S-Tab> to navigate in popup menu
let g:xptemplate_snippet_folders = ['$VIM/vimfiles/xptemplate_personal']  "  set personal snippet folder location
let g:xptemplate_brace_complete = 0                                       "  turn off automatic brace complete
let g:xptemplate_vars = "author=author&email=email" "  Default name and e-mail for all snippets

let g:lucius_style="light"
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_menu=0
set background=dark
colorscheme softlight

" color test script:
" :source $VIMRUNTIME/syntax/hitest.vim

" Align assignments on visually selected lines
vnoremap <leader>= :Tab /=<CR>

" bind :Q to :q
command! Q q

" Align searches to vertical center
map n nzz
map N Nzz


" Easymotion plugin: The key we could use instead of default <Leader>.
let g:EasyMotion_leader_key = '<Leader><Leader>'


set listchars=tab:»\ ,eol:¬

" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END

" guifont size increase / decrease 
nnoremap <C-Up> :call ChangeFontSize(1)<CR>
nnoremap <C-Down> :call ChangeFontSize(0)<CR>

" Change size in guifont option.
" @param grow increase font size with 1, decrease with 0
function! ChangeFontSize(grow)
	let l:currentfont = &guifont
	let l:newfont     = ''

	if a:grow == 1
		" increase font size
		let l:newfont = substitute(l:currentfont, '\zs\d\+', '\=eval(submatch(0)+1)', '')
	else
		" decrease font size
		let l:newfont = substitute(l:currentfont, '\zs\d\+', '\=eval(submatch(0)-1)', '')
	endif

	" replace <space> in font name with \<space>
	let l:newfont = substitute(l:newfont, ' ', '\\ ', 'g')
	" set the new font size
	execute ':set guifont=' . l:newfont
endfunction


" Ack plugin
let g:ackprg="ack-grep -H --nocolor --nogroup --column"


" Fill rest of line with characters according to textwidth ---------------------
" http://stackoverflow.com/questions/3364102/how-to-fill-a-line-with-character-x-up-to-column-y-using-vim
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/ 
    endif
endfunction

nnoremap <silent><leader>- :call FillLine('-')<CR>

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 guifg=#ffffff
match OverLength /\%81v.\+/
