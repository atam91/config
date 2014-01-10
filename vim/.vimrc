" Кодировка текста по умолчанию
set termencoding=utf-8
set encoding=utf8

" возможные кодировки файлов и последовательность определения.
set fileencodings=utf8,cp1251

" Формат строки состояния
set laststatus=2

" Показывать положение курсора всё время.
set ruler
set title 

" Показывать незавершённые команды в статусбаре
set showcmd 

" Сделать строку команд высотой в одну строку
set ch=1

" отключим swp и backup
set noswapfile
set nobackup

" Включаем нумерацию строк
set nu

" Поиск по набору текста 
set hlsearch
set ignorecase
set smartcase
set incsearch

" табуляция
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" автоотступы
set smartindent

" Влючить подстветку синтаксиса
syntax on
colorscheme desert

" Замена символов в тексте 
"set listchars=tab:··
"set listchars=tab:>.,trail:. 
"set list

"set matchpairs+=<:> "Подсвечивать парные скобки для HTML

set hidden " что бы скакать между буфферами не сохраняя


set autoread

"Сколько строк внизу и вверху экрана показывать при прокрутке
set scrolloff=4 

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on
au BufRead,BufNewFile *.php,*.tpl set filetype=php

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

set t_Co=256

" поправим автодополнение
set completeopt=longest,menuone

" tags
set tags+=/home/zh/.vim_projects/pro2/tags;
"---------------------
" PLUGINS 
"=====================

" svndiff
let g:svndiff_autoupdate = 1
hi DiffAdd      ctermfg=0 ctermbg=2 guibg='green' 
hi DiffDelete   ctermfg=0 ctermbg=1 guibg='red' 
hi DiffChange   ctermfg=0 ctermbg=3 guibg='yellow' 

" vim-airline
let g:airline_theme='dark'
"let g:airline_powerline_fonts = 1

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '|'
let g:airline_paste_symbol = 'ρ'


"---------------------
" HOTKEYS
"=====================

" переход к файлу. откроется в новом табе
map <silent> <C-G> <C-W>gf:tabm 999<CR>

" Очистить подсветку последнего найденного выражения
nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>gv

" чужие кнопки для плагинов
" NERDTree
nmap <F2> :NERDTreeToggle<cr>
vmap <F2> <esc>:NERDTreeToggle<cr>
imap <F2> <esc>:NERDTreeToggle<cr>

" Tlist
nmap <C-F2> :TlistToggle<CR>
imap <C-F2> <Esc>:TlistToggle<CR>
vmap <C-F2> <Esc>:TlistToggle<CR>

" ищем по именам файла в проекте
nmap <C-F7> :FufCoverageFile<CR>
imap <C-F7> <Esc>:FufCoverageFile<CR>
vmap <C-F7> <Esc>:FufCoverageFile<CR>
" ищем тэги по файлу
nmap <F7> :FufBufferTag<CR>
imap <F7> <Esc>:FufBufferTag<CR>
vmap <F7> <Esc>:FufBufferTag<CR>

" GREP
" F4 - Run recursive grep
nnoremap <silent> <F4> :Rgrep<cr>

" Shift-F2 - Same as ":Rgrep" but adds the results to the current results
" nnoremap <silent> <S-F2> :RgrepAdd<cr>

" F3 - Search for a pattern on all open buffers
" nnoremap <silent> <F3> :GrepBuffer<cr>


" BuffExplorer
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F6> :bn<cr>
vmap <F6> <esc>:bn<cr>i
imap <F6> <esc>:bn<cr>i

" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+y
imap <C-V> <esc>"+gpa

noremap h[ :call Svndiff("prev")<CR> 
noremap h] :call Svndiff("next")<CR> 
"noremap <F5> :call Svndiff("clear")<CR> 


"------------------
" Vundle
"==================
" required!!!
set nocompatible              " be iMproved
"filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"filetype plugin indent on     " required!

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" /required!!!

" My Bundles:
" from github
Bundle 'scrooloose/nerdtree'
Bundle 'corntrace/bufexplorer'
Bundle 'shawncplus/phpcomplete.vim'
" from vim.org
Bundle 'svndiff'
Bundle 'vcscommand.vim'
Bundle 'taglist.vim'
Bundle 'easygrep'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'php.vim'



