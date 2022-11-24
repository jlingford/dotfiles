--- TREESITTER CONFIG ---
-- protected call
local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { 
	'python',
	'c',
	'lua',
	'bash',
	'awk',
	'javascript',
	'json',
	'markdown',
	'r',
	'sql'
    },
    sync_install = false,
    ignore_install = { '' }, -- list of parsers to ingore for installation
    auto_install = false,
    highlight = {
	enable = true, -- false will disable the whole plugin
	disable = { "lua" }, -- list of languages to disable highlighting for
	additional_vim_regex_highlighting = false,

    },
    indent = { enable = true },
    rainbow = {
        enable = true,
    }
}
