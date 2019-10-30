nmap <leader>pj :%!python -m json.tool<CR>
set autochdir


filetype plugin indent on
autocmd FileType yaml setl indentkeys-=<:>
autocmd FileType yaml setl tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

autocmd FileType javascript setl tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType javascriptreact setl tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType html setl tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType jsx setl tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

nmap <leader>gg :!ginkgo --randomizeAllSpecs <CR>
nmap <leader>gr :!ginkgo -r -p --randomizeAllSpecs --race<CR>
nmap <leader>fs :GoFillStruct<CR>
nmap <leader>fs :GoFillStruct<CR>
nmap <leader>ie :GoIfErr<CR>

set relativenumber

:ab :W :write
:ab ife if err != nil {<CR>
:ab ifer if err != nil {<CR>return err}
:ab td // TODO(borshukov):
:ab be BeforeEach(func() {<CR>
:ab it It("", func() {<CR>

:syntax off

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <leader>en :lnext<CR>


let g:neocomplete#auto_complete_delay = 750
set tw=79
let g:NERDTreeNodeDelimiter = "\u00a0"
