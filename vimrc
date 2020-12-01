" FUNCIONAMIENTO GENERAL
set nocompatible " Activar modo de no compatibilidad con Vi
set ttyfast " Terminal rápido
set noerrorbells " Evita los pitidos en caso de error
set novisualbell " Evita advertencias visuales de los errores
set helplang=es " Idioma para la ayuda y mensajes
set history=50 " Tamaño del historial de comandos
set autochdir " El directorio activo es el del fichero abierto
filetype off     " required

" VISUALIZACIÓN
set ruler " Activa la regla inferior
set showmode " Activa la indicación de modos
set showcmd " Activa la indicación de comandos
syntax enable " Coloreado de sintaxis
syntax on " Turn syntax highlighting on for programing
set number " Mostrar números de línea
set showmatch " Cuando se cierran paréntesis, llaves o corchetes muestra con qué carácter coinciden.
set cursorline " show a visual line under the cursor's current line

let python_highlight_all = 1  " enable all Python syntax highlighting features

" SANGRADO, SALTOS DE LÍNEA Y TABULADORES
set nowrap " Las líneas anchas no se ven enteras


set tabstop=4 " Mantiene para tabstop su valor por defecto
set expandtab    " El tabulador no inserta verdaderas tabulaciones sino espacios en blanco (al modo de Emacs)
set shiftwidth=4   " Tamaño para sangrado con los comandos <, >
set softtabstop=4 " Saltos blandos de tabulador. Es decir: los espacios en blanco a insertar cada vez que se pulse la tecla TAB.


set background=dark

"set textwidth=75 " Ancho de línea
set autoindent " Respetar automáticamente el sangrado de la línea precedente

set backspace=2 " Funcionamiento de la tecla retro

" BÚSQUEDAS
set hlsearch " Iluminar todas las apariciones de la cadena buscada

set ignorecase smartcase " Ignorar mayúsculas y minúsculas salvo si se usan mayúsculas en la cadena de búsqueda
set incsearch " Búsqueda incremental. La añoro de mis tiempos con Emacs.
set smartcase " Include only uppercase words with uppercase search term


"Use utf-8 Encoding
set encoding=utf-8


" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Always display the status line
set laststatus=2

" Speed up scrolling in Vim
set ttyfast

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Detect file types
filetype plugin indent on


 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'IN3D/vim-raml'
" Plugin 'vim-airline/vim-airline'
 
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


map <F2> :NERDTreeToggle<CR>

