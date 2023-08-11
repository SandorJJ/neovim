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
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
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

    -- LSP Zero, code completion
    -- https://github.com/VonHeikemen/lsp-zero.nvim/tree/v2.x
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            { "neovim/nvim-lspconfig" },
            {
                "williamboman/mason.nvim",
                build = function ()
                    pcall(vim.api.nvim_command, "MasonUpdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        }
    },

    -- Indent Blankline, adds indent level lines
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    "lukas-reineke/indent-blankline.nvim",

    -- Git Signs, adds signs to the gutter
    -- https://github.com/lewis6991/gitsigns.nvim
    "lewis6991/gitsigns.nvim",

    -- Comment, comment out lines
    -- https://github.com/numToStr/Comment.nvim
    "numToStr/Comment.nvim",

    -- Cmp Buffer, provides auto completion without a LSP
    -- https://github.com/hrsh7th/cmp-buffer
    "hrsh7th/cmp-buffer",

    -- Cmp Lsp Signature Help, provides signature help
    -- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help
    "hrsh7th/cmp-nvim-lsp-signature-help",

    -- WakaTime, provides metrics about your programming
    -- https://github.com/wakatime/vim-wakatime
    "wakatime/vim-wakatime",
})
