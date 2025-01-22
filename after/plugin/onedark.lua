require("onedark").setup {
	style = "dark",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "onedark"
	end,
}
require("onedark").load()
