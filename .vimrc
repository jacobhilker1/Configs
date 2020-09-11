"       mmm  m    m    Jacob Hilker                                           
"         #  #    #    jhilker.gitlab.io                                      
"         #  #mmmm#    434-409-3789                                           
"         #  #    #                                                           
"     "mmm"  #    #                                                           
"                                                                             
"                                                                             


"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " Vundle plugin manager
Plugin 'tpope/vim-fugitive' "git in vim
Plugin 'tpope/vim-speeddating' "dates in vim
Plugin 'tpope/vim-markdown'
Plugin 'altercation/vim-colors-solarized' "solarized color scheme
"Plugin 'vim-airline/vim-airline' "top and bottom status bars
"Plugin 'vim-airline/vim-airline-themes' "bar themes
Plugin 'preservim/nerdtree' "file manager in vim
Plugin 'ervandew/supertab' "autocompleting code and such
Plugin 'junegunn/limelight.vim' " Highlights only active paragraph
Plugin 'itchyny/lightline.vim'
Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'junegunn/goyo.vim' " Full screen writing mode
Plugin 'reedes/vim-lexical' " Better spellcheck mappings
Plugin 'reedes/vim-litecorrect' " Better autocorrections
Plugin 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plugin 'reedes/vim-wordy' " Weasel words and passive voice
Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'
Plugin 'jceb/vim-orgmode'
Plugin 'dylanaraps/wal.vim'
Plugin 'mboughaba/i3config.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'lervag/vimtex'
Plugin 'liuchengxu/vim-which-key'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
Plugin 'chrisbra/unicode.vim'
Plugin 'lilydjwg/colorizer'
"Plugin 'suan/vim-instant-markdown'
Plugin 'neoclide/coc.nvim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vimwiki/vimwiki'
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'  " Snippets are separated from the engine. Add this if you want them. 
" Trigger configuration. Do not use <tab> if you use "https://github.com/Valloric/YouCompleteMe.""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Plugin 'mhinz/vim-startify' "start menu for vim
Plugin 'morhetz/gruvbox'
Plugin 'sainnhe/gruvbox-material'
Plugin 'rhysd/vim-grammarous'
Plugin 'mattn/emmet-vim'
Plugin 'johannesthyssen/vim-signit'
"Plugin 'vim-pandoc/vim-markdownfootnotes'  
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
""" Use red underline for spell check.
augroup my_colours
  autocmd!
  autocmd ColorScheme gruvbox hi SpellBad cterm=underline ctermfg=red
  autocmd ColorScheme gruvbox hi SpellCap cterm=underline ctermfg=blue
augroup END

syntax enable
set background=dark
"let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
set encoding=UTF-8

" Airline Config
"let g:AirlineTheme='gruvbox'
"let g:airline_solarized_bg='dark'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" Lightline Config
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:cssColorVimDoNotMessMyUpdatetime = 1
let g:coc_disable_startup_warning = 1

" make spelling errors bold insted of red
"hi clear SpellBad
"hi SpellBad cterm=bold


" Tagbar Config
" let g:tagbar_left=1

" Dynamic Line Numbers
set nu rnu

" set nu
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


" Autosource on save
"autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"Disable autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



" Always Highlight my search results
set hlsearch
set spelllang=en_us

" Disable background
highlight Normal ctermbg=None

" Keybindings

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

"" Disable Arrow Keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
" General Keybindings
set backspace=indent,eol,start
"""Use space as leader
let mapleader=" "

" Spell-check set to <leader>sb, 'sb' for 'spellcheck buffer':
map <leader>sb :setlocal spell!<CR> 
"""Toggle Line Numbers
nnoremap <silent> <leader>tn :set invnumber invrelativenumber<CR>

"Movement Keybindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l


"" Plugin Keybindings
map <silent> <leader>pi :PluginInstall<CR>
map <silent> <leader>pu :PluginUpdate<CR> 
map <silent> <leader>ps :PluginSearch
map <silent> <leader>pc :PluginClean<CR>


"" Toggles
nnoremap <F5> :TagbarToggle<CR>
nnoremap <F6> :NERDTreeToggle<CR>

"" Git Commands
nnoremap <leader>gs :Gstatus<CR> 
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

"" Goyo
nnoremap <silent> <leader>rr :Goyo <bar> :highlight Normal ctermbg=None<cr>

""" File Commands
nnoremap <silent> <leader>e :e
nnoremap <silent> <leader>feD :e ~/.vimrc<CR>
nnoremap <silent> <leader>w :w<CR>

""" Quit Commands
nnoremap <silent> <leader>qq :q<CR>
nnoremap <silent> <leader>qs :wq<CR>

""" Splits
nnoremap <silent> <leader>wh :sp<CR>
nnoremap <silent> <leader>wv :vsp<CR>
nnoremap <silent> <leader>wd  <C-w>q<CR>

" Autocompile groff
"nmap <silent> <leader>cg :silent !groff -ms %:p -T pdf > %:r.pdf<cr><cr>
"nmap <silent> <leader>cr :silent !refer -p $BIBLIOGRAPHY %:p \| !groff -ms -T pdf > %:r.pdf<cr><cr>
nmap <silent> <leader>cg :!refer -p $BIBLIOGRAPHY %:p \| groff -ms -T pdf > %:r.pdf<cr><cr>

"autocmd bufwritepost,BufNewFile *.ms :silent !groff -ms % -T pdf -rP12 -rVS=24> %:r.pdf<cr><cr>
"nmap <leader>wc :!wc -w %:p<cr>

"nmap <silent> <leader>mp :vsp \| term glow %<cr>

func Eatchar(pat)
   let c = nr2char(getchar(0))       
   return (c =~ a:pat) ? '' : c      
endfunc


"Abbrevs
"" Email Abbrevs
iab <silent> sig Thanks,<CR>Jacob Hilker<C-R>=Eatchar('\s')<CR>
iab <silent> fsig Love,<CR>Jacob
iab <silent> rsig Best,<CR>Jacob Hilker
iab <silent> mynm Jacob Hilker
iab <silent> mycontact Jacob <cr>5724 St George Ave.<cr>Crozet, VA 22932<cr>434-409-3789<cr>jacob.hilker2@gmail.com<cr>
"" Programming Abbrevs
"""" Shebang Abbrev

iab <silent> shbg #!/bin/sh<CR><CR>
iab <silent> bash #!/bin/bash<CR><CR>
iab <silent> psh #!/usr/bin/env python3<CR><CR>

"Always load polybar config as ini file.
aug polybar_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/polybar/config set filetype=dosini
aug end

"Always load regolith i3 and i3 as i3 syntax files
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
  au BufNewFile,BufRead ~/.config/regolith/i3/config set filetype=i3config
aug end


" Always split below and right rather than vim defaults 
set splitbelow splitright

" Use italic for comments
highlight Comment cterm=italic

autocmd FileType groff,markdown,org,plaintex,nroff set spell
autocmd BufNewFile,BufRead /tmp/neomutt*,/tmp/calcurse*,~/.calcurse/notes/* set spell
autocmd FileType gitcommit setlocal spell



" Load ms files as groff
autocmd BufNewFile,BufRead *.ms,*.mm,*.mom set filetype=groff
imap <c-space> <c-]>


let g:SuperTabDefaultCompletionType = "<c-n>"
set dictionary=/home/jhilker/.vim/spell/en.utf-8.add.spl 
let g:coc_global_extensions = ['coc-emoji', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-json', 'coc-pyls', 'coc-yaml', 'coc-vimtex', 'coc-snippets']
"set viminfo='100,n$HOME/.vim/files/info/viminfo
let g:UltiSnipsSnippetDirectories = ["/home/jhilker/.vim/bundle/vim-snippets/snippets/*"]


inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"Remove new window for instance in existing browser
"let g:instant_markdown_browser = 'firefox -P default-release'
"let g:instant_markdown_browser = 'firefox -P default-release --new-window'
let g:instant_markdown_mathjax = 1

let g:python3_host_prog = "/home/jhilker/anaconda3/bin/python"


"let g:airline#extensions#wordcount#filetypes = ['asciidoc', 'help', 'mail', 'markdown', 'org', 'plaintex', 'rst', 'tex', 'text', 'groff', 'vimwiki']


let g:signit_initials = 'JH'
let g:signit_name = 'Jacob Hilker'
let g:signit_extra_1 = 'gitlab.com/jhilker'
let g:signit_extra_2 = '434-409-3789'
let g:tex_flavor = 'latex'

if !has('gui_running')
  set t_Co=256
endif

function! WordCount()
    let currentmode = mode()
    if !exists("g:lastmode_wc")
        let g:lastmode_wc = currentmode
    endif
    " if we modify file, open a new buffer, be in visual ever, or switch modes
    " since last run, we recompute.
    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
        let g:lastmode_wc = currentmode
        let l:old_position = getpos('.')
        let l:old_status = v:statusmsg
        execute "silent normal g\<c-g>"
        if v:statusmsg == "--No lines in buffer--"
            let b:wordcount = 0
        else
            let s:split_wc = split(v:statusmsg)
            if index(s:split_wc, "Selected") < 0
                let b:wordcount = str2nr(s:split_wc[11])
            else
                let b:wordcount = str2nr(s:split_wc[5])
            endif
            let v:statusmsg = l:old_status
        endif
        call setpos('.', l:old_position)
        return b:wordcount
    else
        return b:wordcount
    endif
endfunction

let g:lightline = {
      \ 'colorscheme' : 'gruvbox',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'wordcount', 'fileformat', 'fileencoding', 'filetype' ]]
      \ },
      \ 'component_function': {
      \   'wordcount': 'WordCount',
      \ },
      \ }

set noshowmode
