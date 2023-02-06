---------------------------------------
-- Checks for packer package manager --
---------------------------------------
local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed")
    return
end

--------------------------------------------------------------
-- Auto reloads Neovim whenever plugins are saved or loaded --
--------------------------------------------------------------
vim.cmd([[
    aug packer_user_config
        au!
        au BufWritePost otherplugs.lua source <afile> | PackerSync
    aug end
]])

------------------
-- Plugins Here --
------------------
packer.startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Smooth scrolling
    use({
            'karb94/neoscroll.nvim',
            config = function()
                require('neoscroll').setup({ hide_cursor = false, respect_scrolloff = true, stop_oef = false })

                local t = {}
                  -- Syntax: t[keys] = {function, {function arguments}}
                t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
                t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}
                t['<A-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '450'}}
                t['<A-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450'}}
                t['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}}
                t['<C-e>'] = {'scroll', { '0.10', 'false', '100'}}
                t['zt']    = {'zt', {'250'}}
                t['zz']    = {'zz', {'250'}}
                t['zb']    = {'zb', {'250'}}
                
                require('neoscroll.config').set_mappings(t)
            end,
        })

    -- Smart region targeting
    use({
            'wellle/targets.vim',
            event = 'BufRead'
    })

    -- Converting a single line to a multi-line and vice versa
    use({
            'AndrewRadev/splitjoin.vim',
            event = 'CursorHold',
    })
    
end)
