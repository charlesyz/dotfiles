set nobackup
set nowb
set noswapfile
set noerrorbells

set mouse=a
set ttymouse=sgr

set so=5
set clipboard=unnamed
set wildmenu
set timeoutlen=1000 ttimeoutlen=0
" Appearance "

syntax enable

set number
set linespace=1

set title
set titlestring=%F\ -\ vim
set guicursor=
set noshowmode
set laststatus=2
set colorcolumn=80
set background=dark

" File behaviour "

set expandtab
set smarttab
set linebreak
set breakindent
set nostartofline

set shiftwidth=4
set tabstop=4

" Search "

set ignorecase
set smartcase
set hlsearch
set incsearch

" Panes "

set splitbelow
set splitright

" Tmux Buffer - Only for Windows SSH with Putty "
let g:fakeclip_no_default_key_mappings = 1
let modifier = '<bang>0' ? '' : '<unique>'
execute 'silent! nmap '.modifier.' d <Plug>(fakeclip-screen-d)'
execute 'silent! vmap '.modifier.' d <Plug>(fakeclip-screen-d)'
execute 'silent! nmap '.modifier.' dd <Plug>(fakeclip-screen-dd)'
execute 'silent! vmap '.modifier.' dd <Plug>(fakeclip-screen-dd)'
execute 'silent! nmap '.modifier.' D <Plug>(fakeclip-screen-D)'
execute 'silent! vmap '.modifier.' D <Plug>(fakeclip-screen-D)'
execute 'silent! nmap '.modifier.' y <Plug>(fakeclip-screen-y)'
execute 'silent! nmap '.modifier.' Y <Plug>(fakeclip-screen-Y)'
execute 'silent! nmap '.modifier.' yy <Plug>(fakeclip-screen-yy)'
execute 'silent! vmap '.modifier.' y <Plug>(fakeclip-screen-y)'
execute 'silent! vmap '.modifier.' Y <Plug>(fakeclip-screen-Y)'
execute 'silent! vmap '.modifier.' yy <Plug>(fakeclip-screen-yy)'
execute 'silent! nmap '.modifier.' p <Plug>(fakeclip-screen-p)'
execute 'silent! nmap '.modifier.' P <Plug>(fakeclip-screen-P)'
execute 'silent! nmap '.modifier.' gp <Plug>(fakeclip-screen-gp)'
execute 'silent! nmap '.modifier.' gP <Plug>(fakeclip-screen-gP)'
execute 'silent! nmap '.modifier.' ]p <Plug>(fakeclip-screen-]p)'
execute 'silent! nmap '.modifier.' ]P <Plug>(fakeclip-screen-]P)'
execute 'silent! nmap '.modifier.' [p <Plug>(fakeclip-screen-[p)'
execute 'silent! nmap '.modifier.' [P <Plug>(fakeclip-screen-[P)'
execute 'silent! vmap '.modifier.' p <Plug>(fakeclip-screen-p)'
execute 'silent! vmap '.modifier.' P <Plug>(fakeclip-screen-P)'
execute 'silent! vmap '.modifier.' gp <Plug>(fakeclip-screen-gp)'
execute 'silent! vmap '.modifier.' gP <Plug>(fakeclip-screen-gP)'
execute 'silent! vmap '.modifier.' ]p <Plug>(fakeclip-screen-]p)'
execute 'silent! vmap '.modifier.' ]P <Plug>(fakeclip-screen-]P)'
execute 'silent! vmap '.modifier.' [p <Plug>(fakeclip-screen-[p)'
execute 'silent! vmap '.modifier.' [P <Plug>(fakeclip-screen-[P)'
execute 'silent! map! '.modifier.' <C-r>& <Plug>(fakeclip-screen-insert)'
execute 'silent! map! '.modifier.' <C-r><C-r>& <Plug>(fakeclip-screen-insert-r)'
execute 'silent! map! '.modifier.' <C-r><C-o>& <Plug>(fakeclip-screen-insert-o)'
execute 'silent! imap '.modifier.' <C-r><C-p>& <Plug>(fakeclip-screen-insert-p)'

" Filetype associations "

autocmd BufRead,BufNewFile *.fish set ft=fish
autocmd BufRead,BufNewFile *.md set filetype=markdown

autocmd FileType gitcommit setlocal spell

" Bindings "

set backspace=indent,eol,start

map q <Nop>
map ; :Files<CR>

map <F6> :setlocal spell!<CR>
map <F12> :Goyo<CR>
map <C-o> :NERDTreeToggle<CR>

map <Leader> <Plug>(easymotion-prefix)

" Plugins "

" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

"let g:gruvbox_vert_split = 'bg1'
"let g:gruvbox_sign_column = 'bg0'
"colorscheme gruvbox

syntax enable
set t_Co=256

colorscheme badwolf
hi Normal ctermbg=NONE
hi CursorLineNr ctermfg=white
hi SignColumn ctermbg=NONE

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=darkred

hi GitGutterAdd ctermfg=green ctermbg=NONE
hi GitGutterChange ctermfg=yellow ctermbg=NONE
hi GitGutterDelete ctermfg=darkred ctermbg=NONE
hi GitGutterChangeDelete ctermfg=yellow ctermbg=NONE

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'fileformat', 'fileencoding']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'gitbranch#name'
  \     }
  \ }

let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_flow = 1
let NERDTreeShowHidden = 1
