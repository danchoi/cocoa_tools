# cocoa_tools

Just a place I will save the VimScript functions and Ruby scripts I want to
write from time to time to make Cocoa development a little more efficient.

## Install

Copy scripts/cocoa_tools.vim to ~/.vim/scripts.

And then put this line in your .vimrc:

    autocmd BufNewFile,BufRead *.[mh] source ~/.vim/scripts/cocoa_tools.vim


## Functions

   <leader><leader> 

switches to alternate file (header to implementation or reverse). Assumes
alternate files are in the same directory.


More functions will be added from time to time.

* Author: Daniel Choi <dhchoi@gmail.com> 

