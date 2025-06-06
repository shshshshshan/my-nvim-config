-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/shnmyklsnc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/shnmyklsnc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/shnmyklsnc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/shnmyklsnc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/shnmyklsnc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\2�\5\0\0\3\0!\00026\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0014\0\0\0005\1\5\0005\2\6\0>\2\2\1=\1\4\0005\1\b\0005\2\t\0>\2\2\1=\1\a\0005\1\v\0005\2\f\0>\2\2\1=\1\n\0005\1\14\0005\2\15\0>\2\2\1=\1\r\0005\1\17\0005\2\18\0>\2\2\1=\1\16\0005\1\20\0005\2\21\0>\2\2\1=\1\19\0005\1\23\0005\2\24\0>\2\2\1=\1\22\0005\1\26\0005\2\27\0>\2\2\1=\1\25\0005\1\29\0005\2\30\0>\2\2\1=\1\28\0006\1\0\0'\2\31\0B\1\2\0029\1 \1\18\2\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b250\1\2\0\0\azb\azb\1\2\0\0\b250\1\2\0\0\azz\azz\1\2\0\0\b250\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b450\1\2\0\0\vscroll\n<A-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b450\1\2\0\0\vscroll\n<A-b>\1\4\0\0\18vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-u>\1\0\3\16hide_cursor\1\22respect_scrolloff\2\rstop_oef\1\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/shnmyklsnc/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/shnmyklsnc/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["splitjoin.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/shnmyklsnc/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["targets.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/shnmyklsnc/.local/share/nvim/site/pack/packer/opt/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\2�\5\0\0\3\0!\00026\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0014\0\0\0005\1\5\0005\2\6\0>\2\2\1=\1\4\0005\1\b\0005\2\t\0>\2\2\1=\1\a\0005\1\v\0005\2\f\0>\2\2\1=\1\n\0005\1\14\0005\2\15\0>\2\2\1=\1\r\0005\1\17\0005\2\18\0>\2\2\1=\1\16\0005\1\20\0005\2\21\0>\2\2\1=\1\19\0005\1\23\0005\2\24\0>\2\2\1=\1\22\0005\1\26\0005\2\27\0>\2\2\1=\1\25\0005\1\29\0005\2\30\0>\2\2\1=\1\28\0006\1\0\0'\2\31\0B\1\2\0029\1 \1\18\2\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b250\1\2\0\0\azb\azb\1\2\0\0\b250\1\2\0\0\azz\azz\1\2\0\0\b250\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b450\1\2\0\0\vscroll\n<A-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b450\1\2\0\0\vscroll\n<A-b>\1\4\0\0\18vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-u>\1\0\3\16hide_cursor\1\22respect_scrolloff\2\rstop_oef\1\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'targets.vim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'splitjoin.vim'}, { event = "CursorHold *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
