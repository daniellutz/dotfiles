""""""""""""""""
" ViM Settings "
""""""""""""""""

  set backspace=2            " Use standard backspace behavior.
  set colorcolumn=80,120     " Highlight columns 80 and 120.
  set cursorline             " Highlights cursor line.
  set encoding=utf-8         " The encoding displayed.
  set fileencoding=utf-8     " The encoding written to file.
  set fileformats=unix       " Force file format to unix.
  set laststatus=2           " Always display the status line, even if only one window is displayed.
  set nocompatible           " Force to use ViM.
  set noshowmode             " Hide ViM mode (because of airline).
  set noshowmatch            " Don't show matching brackets/parentheses.
  set number                 " Show line numbers.
  set scrolloff=5            " Always shows 5 lines above or below the cursor.
  set shell=/bin/sh          " If you use OMZSH, Fish, or any other shell, this will force Vundle to use bash.
  set t_Co=256               " 256 colors in terminal.

  filetype plugin indent on  " Enable ViM to detect the type of file that is being edited.
  syntax on                  " Enable syntax highlighting.


"""""""""""""""""""
" Vundle Settings "
"""""""""""""""""""

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
    Plugin 'gmarik/Vundle.vim'

    " ViM plugins.
    Plugin 'kien/ctrlp.vim'
    Plugin 'mattn/gist-vim'
    Plugin 'edkolev/promptline.vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'edkolev/tmuxline.vim'
    Plugin 'bling/vim-airline'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'tpope/vim-surround'
    Plugin 'mattn/webapi-vim'

    " Languages support.
    Plugin 'chrisbra/csv.vim'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'fatih/vim-go'
    Plugin 'pangloss/vim-javascript'
    Plugin 'elzr/vim-json'
    Plugin 'plasticboy/vim-markdown'

    " Color schemes.
    Plugin 'stulzer/heroku-colorscheme'
  call vundle#end()


""""""""""""""""""""""""""""""""""""""""
" ViM's color scheme and color columns "
""""""""""""""""""""""""""""""""""""""""

  colorscheme heroku-terminal        " Set colorscheme to heroku.
  highlight ColorColumn ctermbg=233  " Set 81-120 columns's background color.


""""""""""""""""""""""""
" ViM Airline Settings "
""""""""""""""""""""""""

  let g:airline_powerline_fonts=1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#branch#enabled=1
  let g:airline#extensions#branch#empty_message='~no repo~'
  let g:airline#extensions#hunks#enabled=0
  let g:airline#extensions#whitespace#enabled=1


"""""""""""""""""""""
" Tmuxline Settings "
"""""""""""""""""""""

  let g:tmuxline_preset = {
    \'a'          : '#(whoami)',
    \'b disabled' : '',
    \'c disabled' : '',
    \'win'        : ['#I', '#W'],
    \'cwin'       : ['#I', '#W'],
    \'x disabled' : '',
    \'y'          : ['%a', '%Y-%m-%d', '%l:%M%p'],
    \'z disabled' : ''
  \}


"""""""""""""""""""""""
" EasyMotion Settings "
"""""""""""""""""""""""

  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)

  map  n <Plug>(easymotion-next)
  map  p <Plug>(easymotion-prev)

