-- Lazy.nvim, plugins manager
-- https://github.com/folke/lazy.nvim
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
	-- https://github.com/nvim-telescope/telescope.nvim
	{ 
		"nvim-telescope/telescope.nvim", branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
    
    -- Treesitter, syntex highlighting
    -- https://github.com/nvim-treesitter/nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
        build = ":TSUpdate",
    },

	-- Harpoon, jumping between files
	-- https://github.com/ThePrimeagen/harpoon
	"ThePrimeagen/harpoon",

    -- Undotree, undo history
    -- https://github.com/mbbill/undotree
    "mbbill/undotree",
    
    -- Fugitive, git wrapper
    -- https://github.com/tpope/vim-fugitive
    "tpope/vim-fugitive",

	-- One Dark, colour theme
	-- https://github.com/navarasu/onedark.nvim
	"navarasu/onedark.nvim",

	-- Lualine, custom statusline
	-- https://github.com/nvim-lualine/lualine.nvim
	"nvim-lualine/lualine.nvim",
})
