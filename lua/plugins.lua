local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	 --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
	function()
		use 'wbthomason/packer.nvim' -- Packer 包管理器
		use {
 			"nvim-lualine/lualine.nvim",
 			requires = {"kristijanhusak/defx-icons", opt = true}
 		} -- 标签栏
		use "akinsho/bufferline.nvim" -- 状态栏
		use {
        	'kyazdani42/nvim-tree.lua',
        	requires = "kyazdani42/nvim-web-devicons",
    	} -- 文件🌲
		use 'luochen1990/rainbow' -- 🌈括号
		--lsp
		use "williamboman/nvim-lsp-installer"
		use "neovim/nvim-lspconfig"
		--代码补全
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/vim-vsnip'
		use 'rafamadriz/friendly-snippets'
		use 'onsails/lspkind-nvim'
		-- 语法高亮
		use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}
		-- indent缩进线
		use "lukas-reineke/indent-blankline.nvim"
		-- 文件搜索 预览 等
		use {
			"nvim-telescope/telescope.nvim",
    		requires = {
      			"nvim-lua/plenary.nvim",
      			"kyazdani42/nvim-web-devicons"
    		}
		}
		-- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
		use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
		-- 主题
		use {"morhetz/gruvbox"}
	end,
	config = {
		max_jobs = 16,
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
