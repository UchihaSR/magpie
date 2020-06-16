Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:coc_global_extensions = [
"             \ 'coc-clangd',
"             \ 'coc-css',
"             \ 'coc-cssmodules',
"             \ 'coc-json',
"             \ 'coc-tsserver',
"             \ 'coc-sh',
"             \ 'coc-snippets',
"             \ 'coc-vimlsp',
"             \ 'coc-emmet',
"             \ 'coc-python',
"             \ 'coc-texlab',
"             \ ]

" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" " Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> ge <Plug>(coc-diagnostic-prev)
"nmap <silent> gE <Plug>(coc-diagnostic-next)

"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" show documentation in preview window.
nnoremap <silent> gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" Highlight the symbol and its references when holding the cursor.
"" autocmd CursorHold * silent call CocActionAsync('highlight')

"" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

"" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"" Introduce function text object
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

"" Use <TAB> for selections ranges.
"" NOTE: Requires 'textDocument/selectionRange' support from the language server.
"" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

"" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

"" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

"" autocmd CursorHoldI * :call <SID>show_hover_doc()
"" autocmd CursorHold * :call <SID>show_hover_doc()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


