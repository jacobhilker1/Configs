set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'ervandew/supertab' "autocompleting code and such
Plugin 'junegunn/limelight.vim' " Highlights only active paragraph
Plugin 'junegunn/goyo.vim' " Full screen writing mode
Plugin 'reedes/vim-lexical' " Better spellcheck mappings
Plugin 'reedes/vim-litecorrect' " Better autocorrections
Plugin 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plugin 'reedes/vim-wordy' " Weasel words and passive voice
Plugin 'hsitz/VimOrganizer'
Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'
Plugin 'ajh17/VimCompletesMe'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
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


"Theme Config
syntax on
set background="dark"
colorscheme solarized


" Airline Config
let g:AirlineTheme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" make spelling errors bold insted of red
hi clear SpellBad
hi SpellBad cterm=bold
autocmd FileType html,tex,nvl set spell let g:airline_section_error='' let g:airline_section_warning=''
" Tagbar Config
let g:tagbar_left=1

" Keybindings

"" Toggles
""" switches between light and dark solarized
call togglebg#map("<F5>") 

""" toggles line number
nnoremap <F6> :set invnumber<CR> 

""" toggle Nerdtree
nnoremap <F7> :NERDTreeToggle<CR>

""" toggle Tagbar
nnoremap <F8> :TagbarToggle<CR>

"" Git Commands
nnoremap gs :Gstatus<CR> 
nnoremap gc :Gcommit<CR>
nnoremap gp :Gpush<CR>

"" Goyo
nnoremap Gy :Goyo<CR>


" don't search all included files for autocomplete, heavens
set incsearch
set complete-=i

" Managing Tabs
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set laststatus=2

" use python audoindent
au BufRead,BufNewFile *.py set autoindent nocindent

"toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Autosource on save
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" Always Highlight my search results
set hlsearch
" Abbrevs
"" Email Abbrevs
iab <silent> sig Thanks,<CR> Jacob Hilker
