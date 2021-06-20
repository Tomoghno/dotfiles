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
" => Managing Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin Source.
	source $HOME/.config/nvim/pack/plugins.vim
" vim-airline settings.
  source $HOME/.config/nvim/pack/plug-config/airline.vim
" vim-one settings.
  source $HOME/.config/nvim/pack/plug-config/one.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
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
