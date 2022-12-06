" nvim-tree 快捷键
" o 打开关闭文件夹
" a 创建文件
" r 重命名
" x 剪切
" c 拷贝
" p 粘贴
" d 删除
map('n', '<leader>t', ':NvimTreeToggle<CR>', opt)
noremap <leader>t :NvimTreeToggle<CR>

" 分割窗口
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

