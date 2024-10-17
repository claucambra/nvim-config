
local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = {
        "c", "cpp", "lua", "python", "bash", "json", "yaml", "html", "css", 
        "javascript", "rust", "go", "cmake", "go", "swift", "vim"
    },
    highlight = { enable = true },
    indent = { enable = true },
})
