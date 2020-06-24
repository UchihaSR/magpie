function! ArabicMode()

   set nospell
   set rightleft
   set delcombine
   set arabicshape

   :noremap    ;           h
   :noremap    j           l
   :noremap	   :    	      b
   :noremap	   J    	      e
   :noremap    <leader>;	^
   :noremap    <leader>j	$

   au automation  InsertEnter *   silent !xmodmap $LAYOUT_AR
   au automation  InsertLeave *   silent !xmodmap $LAYOUT_EN

endfunction

au automation BufRead,BufNewFile *.ar.* call ArabicMode()

nnoremap <leader>r :call ArabicMode()<cr>
nnoremap <silent> ga :call ArabicMode()<CR>
