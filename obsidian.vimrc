" generally refer to: https://github.com/esm7/obsidian-vimrc-support
" To test file, write file and run cmd "reload app without saving"
" 
" To use an obsidian command (see back, forward example):
" - Use Ctrl+Shift+I to open the dev console
" - reload and type :obcommand. The names are now in the Console (2nd tab).
" - note, can't rebind exmap-obmap commands with map
" Also execute codemirror commands with cmcommand, js with jscommand.
" Note about `surround`: as of 2022-05-20, surround does not work, and is janky
" anyhow, but there's a fix coming, eventually. 

" Yank to system clipboard https://forum.obsidian.md/t/how-to-copy-with-vim-mode/3881
set clipboard=unnamed

unmap <C-a> 
" unmap <C-u>
" unmap <C-d> 

exmap back obcommand app:go-back
exmap forward obcommand app:go-forward

imap <C-c> <Esc>
imap jj <Esc> 
imap kk <Esc>
imap jk <Esc>
imap kj <Esc>
imap ggg <Esc>
imap zzz <Esc>

" imap // <Esc>A<Space>//

nmap <C-,> :back
" nmap <C-o> :back
nmap <C-.> :forward
" ergonomic macro button
nmap ` @

" no surround yet
" nmap <C-u> ~
nmap H ^
omap H ^
nmap L $
omap L $
nmap s f
nmap t xhhpll
nmap T dawbP
nmap <Space> i<Space><Esc>l
nmap <S-Space> <PageUp>
nmap U <C-r>
" Experiment with leader mapping, to be expanded
nmap - <leader>
nmap <leader>j 4j

" try out
nmap K lbi[<Esc>wea]()<Esc>P

" Broke
" exmap wiki surround [[ ]]
" map s[ :wiki
" exmap parens surround ( )
" map s( :parens
" exmap quote surround \" \"
" vmap s" :quote
" " paste into pastes text into buffer, not sure why it's good, but try it when
" " surround un-breaks
" map <A-v> :pasteinto

""" Trash
" set nohlsearch " nmap <F9> :nohl - useless
