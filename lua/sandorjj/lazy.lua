local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Telescope, fuzzy finding
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" } },

	-- Harpoon, jumping between files
	"ThePrimeagen/harpoon",

	-- One Dark, colour theme
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "onedark"
		end,
	},

	-- Lualine, custom statusline
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = false,
				theme = "onedark",
				component_separators = "|",
				section_separators = "",

			},
		},
	},

})
