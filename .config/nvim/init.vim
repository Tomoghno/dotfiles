"
"████████╗ ██████╗
"╚══██╔══╝██╔════╝	Tomoghno Sen (DoodleCraft)
"   ██║   ╚█████╗ 	https://www.youtube.com/channel/UCrLuSGTUJRmI8w3aPMN8Stw
"   ██║    ╚═══██╗	https://github.com/Tomoghno
"   ██║   ██████╔╝
"   ╚═╝   ╚═════╝ 
"
" A customized init.vim for neovim (https://neovim.io/)

" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

" Try to load minpac.
packadd minpac

if !exists('g:loaded_minpac')
  " minpac is not available.

" Enable autocompletion:
	set wildmode=longest,list,full

else
  " minpac is available.
  " init with verbosity 3 to see minpac work
  call minpac#init({'verbose': 3})
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('ap/vim-css-color')
  call minpac#add('tomasiser/vim-code-dark')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('junegunn/vim-emoji')
  
  " minpac utility commands
  command! PackUpdate call minpac#update()
  command! PackClean call minpac#clean()
  command! PackStatus call minpac#status()

  " Plugin settings here.
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline_theme ='codedark'
  
  " Settings for plugin-less environment.
  syntax on
  set encoding=utf-8
  set nobackup
  set noswapfile
  set clipboard=unnamedplus
  colorscheme codedark
  set termguicolors
  set mouse=a
endif
