nmap <leader>pj :%!python -m json.tool<CR>
set autochdir


filetype plugin indent on
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setl tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

nmap <leader>gg :!ginkgo<CR>
nmap <leader>gr :!ginkgo -r<CR>

set relativenumber

:ab :W :write
:ab ife if err != nil {<CR>
:ab ifer if err != nil {<CR>return err}
:ab td // TODO(ivan):

:syntax off

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <leader>en :lnext<CR>
