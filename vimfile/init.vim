" the language for this config file is called VimL
set scrolloff=8
set number relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors     " enable true colors support

" let ayucolor="light"  " for light version of theme

" let ayucolor="mirage" " for mirage version of theme


colorscheme ayu

let ayucolor="dark"   " for dark version of theme

let mapleader = " "
" n (normal mode) nore(no recursive execution) map(map)
nnoremap <leader>pv :Vex<CR>

" source current buffer :so %

" everytime i press <leader>Return the config file is sourced
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" jump into last most recent buffer
nnoremap <leader>bp :buffer #<CR>

" fzf mappings
nnoremap <C-p>:GFiles<CR>
" backup to fuzzy find project files if not in a repo
nnoremap <leader>fp :Files<CR>

" save files with leader key
nnoremap <leader>fs :w<CR>

" quickfix list
nnoremap <leader>cc :copen<CR>
nnoremap <leader>cl :cnext<CR>
nnoremap <leader>ch :cprevious<CR>
nnoremap <leader>cj :colder<CR>
nnoremap <leader>ck :cnewer<CR>


" highlight search
nnoremap <leader>she :set hlsearch<CR>
nnoremap <leader>shd :set nohlsearch<CR> 


" close buffer
nnoremap <leader>bd :bd<CR>

" simple compile gcc
nnoremap <leader>gc :!gcc -Wall  % -o %:r.out<CR>
