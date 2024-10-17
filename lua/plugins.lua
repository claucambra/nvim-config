-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim configuration
require("lazy").setup({
    -- Colorscheme
    {"loctvl842/monokai-pro.nvim"},

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },

    {"tpope/vim-rsi"},

    {"preservim/nerdtree"}, -- File explorer

    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        },
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end,
    },

    -- LSP and autocomplete
    -- LSP manager
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    
    -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
    -- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "lspkind.nvim" },
		config = function()
			require("completions")
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp", dependencies = { "nvim-cmp" } },
	{ "hrsh7th/cmp-buffer", dependencies = { "nvim-cmp" } }, -- buffer auto-completion
	{ "hrsh7th/cmp-path", dependencies = { "nvim-cmp" } }, -- path auto-completion
	{ "hrsh7th/cmp-cmdline", dependencies = { "nvim-cmp" } }, -- cmdline auto-completion
	
    -- Code snippet engine
    {"L3MON4D3/LuaSnip"}, -- Snippets plugin

    -- Syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()
            require("treesitter")
        end,
    }, -- Better syntax highlighting

    {
        "yamatsum/nvim-cursorline",
        config = function()
            require('nvim-cursorline').setup {
                cursorline = {
                    enable = true,
                    timeout = 1000,
                    number = false,
                },
                cursorword = {
                    enable = true,
                    min_length = 3,
                    hl = { underline = true },
                }
            }
        end,
    },

    -- Debugging
    {"mfussenegger/nvim-dap"}, -- Debug Adapter Protocol client for Neovim

    -- C++ and Qt support
    {"vim-scripts/a.vim"}, -- Alternate files quickly (.cpp <-> .h)

    -- Utilities
    {"nvim-lua/plenary.nvim"}, -- Common utilities
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope")
        end,
    }, -- Fuzzy finder over lists

    { 
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup({
                sync_root_with_cwd = true,
                respect_buf_cwd = true,
                update_focused_file = {
                    enable = true,
                    update_root = true
                },
            })
        end,
    }, -- Project management

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

    {
        "f-person/git-blame.nvim",
        config = function()
            require('gitblame').setup {
                --Note how the `gitblame_` prefix is omitted in `setup`
                enabled = false,
            }
        end,
    },

    {
        "kdheepak/lazygit.nvim",
    	cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	},
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },

    {"akinsho/toggleterm.nvim", version = "*", config = true},

    -- Copilot
    {
        "github/copilot.vim",
        init = function()
            vim.api.nvim_set_keymap('i', '<M-CR>', 'copilot#Accept("<CR>")', { expr=true, noremap = true, silent = true })
            vim.g.copilot_no_tab_map = true
        end,
    },
    -- iOS development support is primarily through general LSP configurations
    -- and any relevant snippets or syntax highlighting you wish to add.
})

-- Additional configuration for the plugins goes here
-- For example, setting up nvim-cmp, LSP servers, Treesitter, etc.


