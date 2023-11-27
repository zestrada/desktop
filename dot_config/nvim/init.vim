set runtimepath^=~/.vim runtimepath+=~/.vim/after
let g:copilot_filetypes = {'markdown': v:true}
let &packpath=&runtimepath
source ~/.vimrc
lua require('plugins')
colorscheme codedark
set mouse=
