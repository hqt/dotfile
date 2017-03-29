  " Pathogen configuration {{{
  " Pathogen configuration
  " call pathogen#infect()

  " Vundle configuration
  " set nocompatible              " be iMproved, required
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " " alternatively, pass a path where Vundle should install plugins
  " "call vundle#begin('~/some/path/here')
  "
  " " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  " Add plugins from here
  " Theme
  Plugin 'dracula/vim'                    " Dracula style
  Plugin 'vim-airline/vim-airline'        " vim status and tabline theme. base on powerline
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'morhetz/gruvbox'                " Color scheme for vim
  Plugin 'google/vim-colorscheme-primary' " Google color scheme
  " Nerdtree
  Plugin 'scrooloose/nerdTree'            " directory tree, press :ns
  Plugin 'Xuyuanp/nerdtree-git-plugin'    " view git status on nerdtree
  Plugin 'jistr/vim-nerdtree-tabs'        " using nerdtree and tab independent
  " Utility
  Plugin 'tpope/vim-fugitive'             " Git wrapper.
  Plugin 'christoomey/vim-conflicted'     " wrapper of vim-fugitive for resolving git conflict
  Plugin 'tpope/vim-unimpaired'           " pair of braket mapping (such next cnext/cprevious bnext/bprevious ....)
  Plugin 'airblade/vim-gitgutter'         " Show git diff at sidebar. maybe conflict with bookmark
  Plugin 't9md/vim-choosewin'             " choose window in vim like vimium :D can use :cw or :f (simulate Vimimum)
  Plugin 'MattesGroeger/vim-bookmarks'    " global bookmark in VIM (ma and mm hotkey)
  Plugin 'tpope/vim-dispatch'             " run asynchronous command
  Plugin 'junegunn/fzf.vim'               " Searching in vim using fzf
  Plugin 'jceb/vim-orgmode'               " org mode for vim (todo, table ....)
  " Auto complete
  "Plugin 'majutsushi/tagbar'              " browse the tags of the current files and overview of its structure
  "Plugin 'AutoTag'                        " after saving file, auto delete old data and re-create new one
  " Plugin 'scrooloose/syntastic'           " syntax check programming languages (run :si or :SyntasticInfo)
  " Plugin 'Valloric/YouCompleteMe'         " strong autocomplete for many languages
Plugin 'Shougo/deoplete.nvim'              " Auto complete for neovim
  " Syntax hightlight
  Plugin 'ekalinin/Dockerfile.vim'        " syntax hightlight for docker
  Plugin 'skammer/vim-css-color'          " css color for css file
  Plugin 'vim-scripts/JSON.vim'           " syntax for json
  " Others
  Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy finding. <Ctrl+O> for viewing option
  Plugin 'mileszs/ack.vim'                " ack plugin for vim. can be used for Ag as well
  Plugin 'mru.vim'                        " finding files in mru
  Plugin 'tpope/vim-repeat'               " enhance repeating function in vim
  Plugin 'svermeulen/vim-easyclip'        " easier for vim register management such as yank/cut/delete. or management register 1->9 more robust
  Plugin 'tpope/vim-surround'             " change surrounding (paren, bracket, tag ...) in pair (cs and ds)
  Plugin 'ervandew/supertab'              " Simple autocompletion base on typed words
  Plugin 'gcmt/wildfire.vim'              " smart select closed text object (base on paren)
  Plugin 'easymotion/vim-easymotion'      " easier for motion
  Plugin 'christoomey/vim-tmux-navigator' " seamless switch panel between tmux and and vim
  Plugin 'terryma/vim-multiple-cursors'   " multi cusor like Sublime (remember hotkey Control + N)
  " Code format generic
  Plugin 'junegunn/vim-easy-align'        " allign code
  Plugin 'tpope/vim-commentary'           " comment code utilities. gcc(line) gc(visual mode -> block) gc(normal mode -> motion)
  Plugin 'godlygeek/tabular'              " format code tabular
  " Javascript plugin
  Plugin 'flowtype/vim-flow'              " facebook javascript checking
  " Ruby plugin
  Plugin 'kana/vim-textobj-user'          " generic text object selection
  Plugin 'nelstrom/vim-textobj-rubyblock' " select text object in vim such as inside loop, if, method
  Plugin 'tpope/vim-endwise'              " wisely add end in Ruby
  Plugin 'tpope/vim-haml'                 " syntax hightlight for haml
  Plugin 'slim-template/vim-slim'         " syntax highlight for slim
  "Plugin 'tpope/vim-bundler'
  "Plugin 'tpope/vim-rake'
  "Plugin 'tpope/vim-rails'
  "Plugin 'vim-ruby/vim-ruby'
  "Plugin 'ecomba/vim-ruby-refactoring'    " refactoring for ruby
  " Go
  Plugin 'fatih/vim-go'                   " Plugin for go language
  " Scala
  Plugin 'derekwyatt/vim-scala'           " Plugin for scala language
  " JavaScript
  Plugin 'pangloss/vim-javascript'        " javascript syntax hightlight
  Plugin 'mxw/vim-jsx' 										" react jsx syntax hightlight

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
   " after install. run following line for auto load vim configuration
   " :so $MYVIMRC

   " }}}

" Settings {{{

" Switch syntax highlighting on, when the terminal has colors
syntax on
" can be anywhere in sourcetree instead of only root. it will find current directory and toward root until find one
set tags=./tags;/
let mapleader = ";"

" clear background color so vim doesn't only color background under text.
:set t_ut=

" Solarized theme
" let g:solarized_termtrans = 1
" set background=dark
" colorscheme solarized

" Tomorrow Theme
set background=light
colorscheme Tomorrow-Night

" Dracula
" color dracula

" Google light color scheme
" syntax enable
" set t_Co=256
" set background=light
" colorscheme primary

" Google dark color scheme
" syntax enable
" set t_Co=256
" set background=dark
" colorscheme primary

" enable mouse in all mode
set mouse=a
" set this to the name or terminal supporting mouse codes (xterm, xterm2 ...
if !has('nvim')
    set ttymouse=xterm2
endif

set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline

" turn off hightlight when searching
set nohlsearch

" Use vim, not vi api
"set nocompatible

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Command history
set history=100

" Always show cursor
set ruler

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Turn on line numbers
set number

" relative line
set relativenumber

" Highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
set statusline=%f%{fugitive#statusline()}\ %=L:%l/%L\ %c\ (%p%%)

" Hide the toolbar
set guioptions-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
map - <c-w>-
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Code folding
set foldmethod=indent
set foldlevel=1
set foldclose=all

" Set built-in file system explorer to use layout similar to the ERDTree plugin
map - <c-w>-
let g:netrw_liststyle=3

" }}}

" Plugins {{{
" execute pathogen#infect()
" filetype plugin indent on " required by Pathogen Plugin Manager

runtime macros/matchit.vim

" Javascript

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1
set foldmethod=syntax

" vim-jsx
let g:jsx_ext_required = 0  "enable jsx syntax in js file

" CtrlP
map <leader>t <C-p>
map <leader>y :CtrlPBuffer<cr>
map :cpr :CtrlPClearCache<cr>
let g:ctrlp_show_hidden       = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height        = 30

" let no max file limit
let g:ctrlp_max_files       = 0
let g:ctrlp_max_depth       = 40
let g:ctrlp_follow_symlinks = 1

" CtrlP -> override <C-o> to provide options for how to open files
let g:ctrlp_arg_map = 1

" CtrlP -> files matched are ignored when expanding wildcards
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store

" CtrlP -> use Ag for searching instead of VimScript
" (might not work with ctrlp_show_hidden and ctrlp_custom_ignore)
let g:ctrlp_user_command = 'ag %s -l --nocolor -i -g ""'

" CtrlP -> directories to ignore when fuzzy finding
let g:ctrlp_custom_ignore = '\v[\/]((node_modules)|\.(git|svn|grunt|sass-cache))$'

" Ack (uses Ag behind the scenes)
let g:ackprg = 'ag --nogroup --nocolor --column'

" Syntastic. (config so more easily use at first time)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map :si :SyntasticInfo<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
let g:syntastic_mode_map                 = { 'mode': 'passive' }

" Facebook flow
let g:flow#enable = 1
let g:flow#omnifunc = 1

" Go
let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_fields            = 1
let g:go_highlight_types             = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1

" fzf
set rtp+=~/.fzf

" Sneak
let g:sneak#streak = 1

" Airline (status line)
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_paste               = 1
set t_Co=256

" Tabbar
nmap <leader>tb :TagbarToggle<CR>

" MRU configuration
map :mru :MRU<cr>

" deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#file#enable_buffer_path = 1
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
" inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
" inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"pumvisible() ? "\" : "\

" Gist authorisation settings
let g:github_user                  = $GITHUB_USER
let g:github_token                 = $GITHUB_TOKEN
let g:gist_detect_filetype         = 1
let g:gist_open_browser_after_post = 1

" Related plugins:
" https://github.com/mattn/webapi-vim
" https://github.com/vim-scripts/Gist.vim
" https://github.com/tpope/vim-fugitive

" HTML generation using 'emmet-vim'
" NORMAL mode Ctrl+y then , <C-y,>

" Vim easy-align plugin
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
vmap ga <Plug>(EasyAlign)

" vmap <Enter> <Plug>(EasyAlign)
" nmap =a <Plug>(EasyAlign)

"Easy-clip
" easy-clip mapping all delete commands such as d/c/ ... to black-hole
" register and mapping m for cut character
" meanwhile. m is marked in vim. so we must remap again mark function
nnoremap gm m

" Git gutter
let g:gitgutter_enabled            = 1
let g:gitgutter_eager              = 0
let g:gitgutter_sign_column_always = 1
highlight clear SignColumn

" NERDTree
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:nerdtree_tabs_open_on_gui_startup = 0

" nerdtree internal hotkey
let NERDTreeMapOpenSplit  = '-'
let NERDTreeMapOpenVSplit = '+'

nmap :ns :NERDTree<cr>
nmap :tns <plug>NERDTreeTabsToggle<cr>
" Searching the file system
map <leader>' :NERDTreeToggle<cr>
map <leader>ns :NERDTree<cr>
map <leader>tns <plug>NERDTreeTabsToggle<cr>
" hotkey to navigate current file
 map <leader>r :NERDTreeFind<cr>
" Macvim
set guioptions+=c

" Tabularize
map <Leader>e :Tabularize /=<cr>
map <Leader>c :Tabularize /:<cr>
map <Leader>es :Tabularize /=\zs<cr>
map <Leader>cs :Tabularize /:\zs<cr>

" Camel Case Motion (for dealing with programming code)
" map <silent> w <Plug>CamelCaseMotion_w
" map <silent> b <Plug>CamelCaseMotion_b
" map <silent> e <Plug>CamelCaseMotion_e
" sunmap w
" sunmap b
" sunmap e
" " }}}

" Mappings {{{

" Notes. How to use map, noremap ...
"
" :map     j gg (j will be mapped to gg)
" :map     Q j  (Q will also be mapped to gg, because j will be expanded -> recursive mapping)
" :noremap W j  (W will be mapped to j not to gg, because j will not be expanded -> non recursive)
" These mappings work in all modes. To have mappings work in only specific
" modes then denote the mapping with the mode character.
"
" e.g.
" to map something in just NORMAL mode use :nmap or :nnoremap
" to map something in just VISUAL mode use :vmap or :vnoremap

" Clear search buffer
:nnoremap § :nohlsearch<cr>

" Buffers (runs the delete buffer command on all open buffers)
map <leader>yd :bufdo bd<cr>

" fugitive git bindings
" git fugitive
map :gg :Ggrep
map :gl :Gblame<CR>

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gg :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" Vim window size management

" resize vim panel
map _ <c-w>- " decrement height
map + <c-w>+ " increment height
" map < <c-w>< " decrement width
" map > <c-w>> " decrement height
map <leader>w] <C-W>_ " maximize height
map <leader>w[ <C-W>= " equalize all windows

" move between buffers
" map <C-[> :bp<CR>
" map <C-]> :bn<CR>

" Leader key configuration
" make all mapping easier and less painful : )

"" Running Tests...
" See also <https://gist.github.com/8114940>

" Run currently open RSpec test file
map <Leader>rf :w<cr>:!bundle exec rspec % --format documentation<cr>

" Run current RSpec test
" RSpec is clever enough to work out the test to run if the cursor is on any line within the test
map <Leader>rt :w<cr>:exe "!bundle exec rspec %" . ":" . line(".")<cr>

" Run all RSpec tests
map <Leader>rat :w<cr>:! bundle exec rspec --format nested<cr> CtrlH on nvim acts as backspace. we must give a little hack here

" bug in nvim. Control+H -> backspace. so we order backspace again to tmux
" navigator
if has('nvim')
  nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif

" switching between buffer easier by pressing tab or shift-tab
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Make splitting Vim windows easier
map <leader>- <C-W>s
map <leader>\ <C-W>v
" quitting pane easier
map <Leader>q :q<cr>
" writing easier
map <Leader>w :w<cr>
" clear search easier
map <Leader>cs :noh<cr>

" ChooseWin configuration
" Tmux style window selection
map :cw :ChooseWin<cr>
map :f :ChooseWin<cr>
map <Leader>f :ChooseWin<cr>

" Change cursor shape between insert and normal mode in iTerm2.app
" nvim cursor setting
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" tmux setting
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}

" Commands {{{
" http://vim.wikia.com/wiki/Have_Vim_check_automatically_if_the_file_has_changed_externally
" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

" When switching panes in tmux, an escape sequence is printed. Redrawing gets
" rid of it. See https://gist.github.com/mislav/5189704#comment-951447
au FocusLost * :redraw!

" auto open quicklist after git grep
autocmd QuickFixCmdPost *grep* cwindow

" jump to last cursor
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

fun! StripTrailingWhitespace()
  " don't strip on these filetypes
  if &ft =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

" file formats
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 " http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd FileType sh,cucumber,ruby,yaml,zsh,vim setlocal shiftwidth=2 tabstop=2 expandtab

" specify syntax highlighting for specific files: json. readme. spv
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?
autocmd Bufread,BufNewFile *.json set ft=javascript

" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=darkred
" set colorcolumn=80

" Highlight words to avoid in tech writing
" http://css-tricks.com/words-avoid-educational-writing/
highlight TechWordsToAvoid ctermbg=red ctermfg=white
match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy/
autocmd BufWinEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd InsertEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd InsertLeave * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd BufWinLeave * call clearmatches()

" Create a 'scratch buffer' which is a temporary buffer Vim wont ask to save
" running command :Shell will print out all output to separate buffer.
" (instead of ->  :! command  )
" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
    if part[0] =~ '\v[%#<]'
      let expanded_part = fnameescape(expand(part))
      let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
    endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

" Close all folds when opening a new buffer
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zM

" Rainbow parenthesis always on!
if exists(':RainbowParenthesesToggle')
  autocmd VimEnter * RainbowParenthesesToggle
  autocmd Syntax * RainbowParenthesesLoadRound
  autocmd Syntax * RainbowParenthesesLoadSquare
  autocmd Syntax * RainbowParenthesesLoadBraces
endif

" Reset spelling colours when reading a new buffer
" This works around an issue where the colorscheme is changed by .local.vimrc
fun! SetSpellingColors()
  highlight SpellBad cterm=bold ctermfg=white ctermbg=red
  highlight SpellCap cterm=bold ctermfg=red ctermbg=white
endfun
autocmd BufWinEnter * call SetSpellingColors()
autocmd BufNewFile * call SetSpellingColors()
autocmd BufRead * call SetSpellingColors()
autocmd InsertEnter * call SetSpellingColors()
autocmd InsertLeave * call SetSpellingColors()

" Change colourscheme when diffing
fun! SetDiffColors()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()
" }}}
