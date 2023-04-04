runtime ./vimrc.vim

" 使用插件
lua require('plugins')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')

" 按键映射
runtime ./maps.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim

" 新建文件添加文件头
autocmd BufNewFile *.py,*.sh exec ":call SetTitle()"

func SetTitle()
	if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
		call append(line(".")+1, "\"\"\"")
        call append(line(".")+2, "\# File Name: ".expand("%")) 
        call append(line(".")+3, "\# Author: Boya Xiao") 
        call append(line(".")+4, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+5, "") 
		call append(line(".")+6, "\"\"\"")
	endif
	if &filetype == 'py'
		call setline(1,"\#coding:utf-8")
		call append(line("."), "")
		call append(line(".")+1, "\"\"\"")
		call append(line(".")+2, "\# @File        : ".expand("%"))
		call append(line(".")+3, "\# @Author      : Boya Xiao")
		call append(line(".")+4, "\# @Time        : ".strftime("%Y-%m-%d %H:%M"))
        call append(line(".")+5, "\# @Description : ") 
		call append(line(".")+6, "\"\"\"")
    endif
endfunc

" 启动命令
autocmd VimEnter * NvimTreeToggle

