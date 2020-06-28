let s:arabicmode = 0
function! ToggleArabicMode()
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
        augroup ArabicAutoCommands
            autocmd!
        augroup END
    endif
endfunction
au automation BufReadPost *.ar.* call ToggleArabicMode()
nnoremap <silent> ga :call ToggleArabicMode()<CR>
