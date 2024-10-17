-- define your colorscheme here
local colorscheme = 'monokai-pro'
require('monokai-pro').setup({
  -- ... your config
})

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
else
    vim.cmd([[MonokaiPro classic]])
end
