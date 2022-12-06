local pluginKeys = {}

pluginKeys.maplsp = function(mapbuf)
	-- 跳转到声明
	mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {silent = true, noremap = true})
	-- 跳转到定义
	mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {silent = true, noremap = true})
    -- 显示注释文档
	mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {silent = true, noremap = true})
	-- 跳转到实现
	mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {silent = true, noremap = true})
	-- 跳转到引用位置
	mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {silent = true, noremap = true})
	-- 以浮窗形式显示错误
	mapbuf('n', 'go', '<cmd>lua vim.lsp.buf.open_float()<CR>', {silent = true, noremap = true})
	mapbuf('n', 'gp', '<cmd>lua vim.lsp.buf.goto_prev()<CR>', {silent = true, noremap = true})
	mapbuf('n', 'gn', '<cmd>lua vim.lsp.buf.goto_next()<CR>', {silent = true, noremap = true})

end

return pluginKeys
