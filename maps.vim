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

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>

noremap <C-s> :w<CR>
nmap <C-a> gg<S-v>G

