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
set incsearch
set hlsearch
set smartcase

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

set autoread

"Сколько строк внизу и вверху экрана показывать при прокрутке
set scrolloff=4 

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on
au BufRead,BufNewFile *.php set filetype=php

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

"---------------------
" PLUGINS 
"=====================

" GitGutter
highlight clear SignColumn

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

" Очистить подсветку последнего найденного выражения
nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>gv

" чужие кнопки для плагинов
" NERDTree
nmap <F2> :NERDTreeToggle<cr>
vmap <F2> <esc>:NERDTreeToggle<cr>
imap <F2> <esc>:NERDTreeToggle<cr>

" BuffExplorer
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <C-F7> :bn<cr>
vmap <C-F7> <esc>:bn<cr>i
imap <C-F7> <esc>:bn<cr>i

" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+y
imap <C-V> <esc>"+gpa


