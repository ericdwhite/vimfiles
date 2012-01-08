"
" Using Janus for most of the defaults
"   https://github.com/carlhuda/janus


" Leader
let mapleader = ","

" Style
"   http://vimcolorschemetest.googlecode.com/svn/html/index-c.html
colorscheme molokai

" Completions
"set wildmenu wildmode=full completeopt+=longest
"set wildignore+=node_modules,classes,target,Maildir,tmp
"set wildignore+=*.pyc,*.o,*.a,*.class,*.jar,*.zip,*.tgz,*.tar.gz,*.tbz2,*~
"set wildignore+=.git,.hg,.svn,.bzr,CVS
"let g:CommandTAcceptSelectionSplitMap='<C-w>'

" Tabs
nmap ,a :tabprevious<CR>
nmap ,s :tabnext<CR>

" Windows
nmap <C-N> <C-W>w
nmap <C-P> <C-W>W
nmap ,n <C-W>w
nmap ,p <C-W>W
nmap ,H <C-W>H
nmap ,J <C-W>J
nmap ,K <C-W>K
nmap ,L <C-W>L
nmap ,= <C-W>=
nmap ,T <C-W>T
nmap ,r <C-W>r
nmap ,R <C-W>R
set equalalways
set splitbelow splitright
set mouse=a

" Sessions
set viminfo=!,'100,<50,s10,h
let sessionman_save_on_exit = 1

" Let %% expands to directory of %
cabbr <expr> %% expand('%:h')

" Compilation
"command Rmake make! % | copen
"nmap <silent> ,m <Esc>:Rmake<CR><C-W><CR>

" Extension Mappings
autocmd BufRead,BufNewFile *.ejs   set filetype=html
autocmd BufRead,BufNewFile *.ru    set filetype=ruby
autocmd BufNewFile,BufRead *.md    set filetype=markdown

" Plaintext Formatting
autocmd FileType markdown  set fo+=a2 tw=78

" Execute tests in a screen session.
autocmd FileType javascript map <D-r> :w<CR>:!screen -x testr -X stuff $'./test.sh \n'<CR><CR>

" Assume BASH Syntax
let g:is_bash=1

"
" Plugin Specific
" ---------------
"

" NERD-Tree (toggle the tree o/c)
nmap <Leader>f :NERDTreeToggle<CR>


