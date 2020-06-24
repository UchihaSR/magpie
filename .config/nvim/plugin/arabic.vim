function! ArabicMode()

    " if has(rightleft?)
    "     set rightleft!
    " else
    "     set rightleft
    " endif

    set nospell
    set rightleft
    set delcombine
    set arabicshape

    :noremap    ;            h
    :noremap    j            l
    :noremap    :            b
    :noremap    J            e
    :noremap    <leader>;    ^
    :noremap    <leader>j    $

    au automation  InsertEnter *   silent !xmodmap $LAYOUT_AR
    au automation  InsertLeave *   silent !xmodmap $LAYOUT_EN

endfunction
" nnoremap <silent> ga :call ArabicMode()<CR>




let s:arabicmode = 0
function! ToggleArabic()
    set arabicshape
    set spell!
    set rightleft!
    set delcombine!
    if s:arabicmode == 0
        let s:arabicmode = 1
        :noremap    ;            h
        :noremap    j            l
        :noremap    :            b
        :noremap    J            e
        :noremap    <leader>;    ^
        :noremap    <leader>j    $



        augroup ArabicAutoCommands
            autocmd!
        au InsertEnter * silent !xmodmap $LAYOUT_AR &
        au InsertLeave * silent !xmodmap $LAYOUT_EN &
        augroup END

    else
        let s:arabicmode = 0
        :noremap    j            h
        :noremap    ;            l
        :noremap    J            b
        :noremap    :            e
        :noremap    <leader>j    ^
        :noremap    <leader>;    $
    endif
endfunction
au automation BufRead,BufNewFile *.ar.* call ToggleArabic()
nnoremap <silent> ga :call ToggleArabic()<CR>

