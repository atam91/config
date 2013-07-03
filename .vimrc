" Кодировка текста по умолчанию
set termencoding=utf-8

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

set matchpairs+=<:> "Подсвечивать парные скобки для HTML

set autoread
