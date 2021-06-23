"
" ████████╗ ██████╗
" ╚══██╔══╝██╔════╝	Tomoghno Sen (DoodleCraft)
"    ██║   ╚█████╗ 	https://www.youtube.com/channel/UCrLuSGTUJRmI8w3aPMN8Stw
"    ██║    ╚═══██╗	https://github.com/Tomoghno
"    ██║   ██████╔╝	https://gitlab.com/Tomoghno
"    ╚═╝   ╚═════╝ 
"
" A customized init.vim for neovim (https://neovim.io/)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Source.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Source.
	source $HOME/.config/nvim/vim-plug/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Managing Plugin Settings.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline settings.
  source $HOME/.config/nvim/vim-plug/plug-config/airline.vim
" vim-one settings.
  source $HOME/.config/nvim/vim-plug/plug-config/one.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  syntax on
  set encoding=utf-8
  set nobackup
  set noswapfile
  set clipboard=unnamedplus
  set background=dark
  colorscheme one
  set termguicolors
  set mouse=a
