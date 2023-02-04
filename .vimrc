set nocompatible              " be iMproved, required
filetype off                  " required
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'filfirst/Monota'
Plugin 'Chiel92/vim-autoformat'
Plugin 'davidhalter/jedi-vim'
Plugin 'ciaranm/detectindent'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme Monota

if has('persistent_undo')      "check if your vim version supports it
	set undofile                 "turn on the feature
	set undodir=$HOME/.vim/undo  "directory where the undo files will be store
endif

nmap <F6> :NERDTreeToggle<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2
set noshowmode
set clipboard=unnamed

"set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

let vim_markdown_preview_browser='Mozilla Firefox'
let vim_markdown_preview_github=1

"set tabstop=2
"set shiftwidth=2
"set expandtab

"Match whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
function! OpenCurrentAsNewTab()
    let l:currentPos = getcurpos()
    tabedit %
    call setpos(".", l:currentPos)
endfunction
nmap t% :call OpenCurrentAsNewTab()<CR>

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

au BufNewFile,BufRead Jenkinsfile setf groovy
noremap ; l
noremap l k
noremap k j
noremap j h
