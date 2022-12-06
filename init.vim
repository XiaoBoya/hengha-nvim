runtime ./vimrc.vim

" 使用插件
lua require('plugins')
lua require("lsp")
lua require('lsp/nvim-cmp')

" 按键映射
runtime ./maps.vim

