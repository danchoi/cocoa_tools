" Some VimScript functions that are useful for Cocoa development

if exists("g:CocoaToolsLoaded")
  finish
end

func! CocoaTools_GoToAltFile()
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

noremap <leader><leader> :call CocoaTools_GoToAltFile()<CR>

let g:CocoaToolsLoaded = 1

" Author: Daniel Choi <dhchoi@gmail.com>
