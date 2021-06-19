"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => minpac For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
  call minpac#add('rakr/vim-one')
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('junegunn/vim-emoji')
  
  " minpac utility commands
  command! PackUpdate call minpac#update()
  command! PackClean call minpac#clean()
  command! PackStatus call minpac#status()

endif
