" Some VimScript functions that are useful for Cocoa development

func! CocoaVimGoToAltFile()
  let ext= expand('%:e')
  if ext == 'm'
    let newext = 'h'
  elseif ext == 'h'
    let newext = 'm'
  else
    echom "Not a Cocoa source file"
    return
  endif
  let altfile = expand('%:r') . '.' . newext

  if bufexists(altfile)
    exec "buffer ".altfile
  else
    exec "edit ".altfile
  endif
endfunc!

noremap <leader><leader> :call CocoaVimGoToAltFile()<CR>

" Author: Daniel Choi <dhchoi@gmail.com>
