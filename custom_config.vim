nmap <leader>pj :%!python -m json.tool<CR>
set autochdir


nmap <leader>gg :!ginkgo<CR>
nmap <leader>gr :!ginkgo -r<CR>

set relativenumber

function! s:tab_complete()
    if pumvisible()
        return "\<C-n>"
    else
        " Check whether it's an empty line
        let col = col('.') - 1
        if !col || getline('.')[col - 1] =~ '\s'
            return "\<TAB>"
        endif

        if neosnippet#expandable_or_jumpable()
            return "\<Plug>(neosnippet_expand_or_jump)"
        endif

        return "\<TAB>"
    endif
endfunction

imap <silent><expr> <TAB> <SID>tab_complete()

:ab :W :write
:ab ife if err != nil {<CR>
:ab ifer if err != nil {<CR>return err}
:ab td // TODO(ivan):