" Кодировка текста по умолчанию
set termencoding=utf-8
set encoding=utf8

" возможные кодировки файлов и последовательность определения.
set fileencodings=utf8,cp1251

" Формат строки состояния
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2

" Показывать положение курсора всё время.
set ruler
set title 

" Показывать незавершённые команды в статусбаре
set showcmd 

" Сделать строку команд высотой в одну строку
set ch=1


" Включаем нумерацию строк
set nu

" Поиск по набору текста (очень полезная функция)
set incsearch
set hlsearch
set smartcase

" Скрыть выделение поиска
nmap <F3> :set hlsearch!<cr>

" табуляция
set tabstop=4
set shiftwidth=4
set smarttab
set et

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


set scrolloff=4 "Сколько строк внизу и вверху экрана показывать при прокрутке



"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on
au BufRead,BufNewFile *.php set filetype=php

" чужие кнопки для плагинов
" NERDTree
nmap <F2> :NERDTreeToggle<cr>
vmap <F2> <esc>:NERDTreeToggle<cr>
imap <F2> <esc>:NERDTreeToggle<cr>


" BuffExplorer
nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <C-F7> :bn<cr>
vmap <C-F7> <esc>:bn<cr>i
imap <C-F7> <esc>:bn<cr>i

"" Автозавершение слов по tab =)
"function InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\"
"     else
"         return "\<c-p>"
"     endif
"endfunction
"imap <tab> <c-r>=InsertTabWrapper()<cr>


" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+y
imap <C-V> <esc>"+gpa

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
