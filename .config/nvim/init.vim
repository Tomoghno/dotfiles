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
" => Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin Source.
	source $HOME/.config/nvim/pack/plugins.vim

" Plugin settings here.
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline_theme ='one'
  let g:one_allow_italics = 1

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
