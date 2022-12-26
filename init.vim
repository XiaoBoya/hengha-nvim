runtime ./vimrc.vim

" 使用插件
lua require('plugins')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')

" 按键映射
runtime ./maps.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim

" 启动命令
" autocmd VimEnter * NvimTreeToggle

