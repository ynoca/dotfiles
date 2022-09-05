-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\ftoggler\1\0\1\tline\acc\1\0\1\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2!<Cmd>BufferLineCycleNext<CR>\n<Tab>\1\0\2\fnoremap\2\vsilent\2!<Cmd>BufferLineCyclePrev<CR>\f<S-Tab>\6n\20nvim_set_keymap\bapi\bvim\15highlights\20buffer_selected\1\0\0\1\0\1\14underline\2\foptions\1\0\0\1\0\5\tmode\ttabs\16color_icons\2\20show_close_icon\1\28show_buffer_close_icons\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\25show_current_context\2\25space_char_blankline\6 \31show_current_context_start\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nV\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\17border_style\tbold\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\6\0\0\6\0&\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0>\5\1\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0024\3\0\0=\3%\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\2\0\rfilename\16file_status\2\tpath\3\0\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3�\a\vwinbar\3�\a\ftabline\3�\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\4\0\0\16sumneko_lua\fcss-lsp\rhtml-lsp\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0\24colorscheme duskfox\17nvim_command\bapi\bvim\foptions\1\0\0\vstyles\1\0\0\1\0\3\rkeywords\tbold\rcomments\vitalic\ntypes\tbold\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nL\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\fsources\1\0\0\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\5\1\0\v\0*\0B6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0034\4\6\0005\5\b\0>\5\1\0045\5\t\0>\5\2\0045\5\n\0>\5\3\0045\5\v\0>\5\4\0045\5\f\0>\5\5\4=\4\r\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\aB\a\1\2=\a\19\0069\a\14\0009\a\20\aB\a\1\2=\a\21\0069\a\14\0009\a\22\aB\a\1\2=\a\23\0069\a\14\0009\a\24\aB\a\1\2=\a\25\0069\a\14\0009\a\26\a5\t\29\0009\n\27\0009\n\28\n=\n\30\tB\a\2\2=\a\31\6B\4\2\2=\4\14\0035\4#\0006\5\0\0'\a \0B\5\2\0029\5!\0055\a\"\0B\5\2\2=\5$\4=\4%\3B\1\2\0016\1&\0009\1'\0015\2)\0=\2(\1K\0\1\0\1\4\0\0\fmenuone\rnoinsert\rnoselect\16completeopt\bopt\bvim\15formatting\vformat\1\0\0\1\0\1\rmaxwidth\0032\15cmp_format\flspkind\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nabort\n<C-l>\rcomplete\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n?\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\24formatting_seq_sync\bbuf\blsp\bvim�\1\1\2\n\0\14\0\0219\2\0\0009\2\1\2\15\0\2\0X\3\16�6\2\2\0009\2\3\0029\2\4\2'\4\5\0005\5\t\0006\6\2\0009\6\3\0069\6\6\6'\b\a\0005\t\b\0B\6\3\2=\6\n\5=\1\v\0053\6\f\0=\6\r\5B\2\3\1K\0\1\0\rcallback\0\vbuffer\ngroup\1\0\0\1\0\1\nclear\2\vFormat\24nvim_create_augroup\16BufWritePre\24nvim_create_autocmd\bapi\bvim\31documentFormattingProvider\24server_capabilities�\4\1\0\n\0$\00056\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0029\3\a\0029\3\b\0039\3\t\3+\4\2\0=\4\n\0039\3\v\0009\3\f\0035\5\r\0=\1\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\5B\3\2\0019\3\19\0009\3\f\0035\5\20\0=\1\14\0055\6\26\0005\a\24\0005\b\22\0005\t\21\0=\t\23\b=\b\25\a=\a\27\6=\6\28\5B\3\2\0019\3\29\0009\3\f\0035\5\30\0=\1\14\5=\2\31\0055\6 \0=\6\16\5B\3\2\0019\3!\0009\3\f\0035\5\"\0=\1\14\5=\2\31\0055\6#\0=\6\16\5B\3\2\1K\0\1\0\1\2\0\0\thtml\1\0\0\thtml\1\2\0\0\tjson\17capabilities\1\0\0\vjsonls\rsettings\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\1\0\4\14underline\2\nsigns\2\17virtual_text\1\21update_in_insert\2\16sumneko_lua\bcmd\1\3\0\0\31typescript-language-server\f--stdio\14filetypes\1\4\0\0\15typescript\20typescriptreact\19typescript.tsx\14on_attach\1\0\0\nsetup\rtsserver\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14scrollbar\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-treehopper"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-treehopper",
    url = "https://github.com/mfussenegger/nvim-treehopper"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\3=\3\6\0025\3\a\0004\4\0\0=\4\5\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0029\0\14\0B\0\1\0029\1\15\0005\2\17\0=\2\16\1K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\23get_parser_configs\28nvim-treesitter.parsers\fautotag\1\0\1\venable\2\21ensure_installed\1\6\0\0\btsx\tjson\bcss\thtml\blua\vindent\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\1\0\2\17sync_install\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\r\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24<Cmd>PackerSync<CR>\14<Space>ps\1\0\2\fnoremap\2\vsilent\2\27<Cmd>PackerInstall<CR>\14<Space>pi\1\0\2\fnoremap\2\vsilent\2\27<Cmd>PackerCompile<CR>\14<Space>pc\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2$<cmd>Telescope file_browser<CR>\14<Space>ff\6n\20nvim_set_keymap\bapi\bvim\17file_browser\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\"<cmd>Telescope find_files<CR>\14<Space>fg\6n\20nvim_set_keymap\bapi\bvim\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-media-files.nvim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16media_files\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n$\0\1\4\1\1\0\5-\1\0\0009\1\0\1\18\3\0\0B\1\2\1K\0\1\0\0�\vremove�\3\1\0\t\0\31\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\0035\4\20\0005\5\v\0005\6\17\0005\a\r\0009\b\f\0=\b\14\a3\b\15\0=\b\16\a=\a\18\6=\6\19\5=\5\3\4=\4\2\3B\1\2\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0012\0\0�K\0\1\0\1\0\1\fnoremap\2!<cmd>Telescope help_tags<CR>\14<Space>fH\1\0\1\fnoremap\2 <cmd>Telescope oldfiles<CR>\14<Space>fh\6n\20nvim_set_keymap\bapi\bvim\1\0\0\fmapping\6i\1\0\0\n<C-d>\0\n<C-h>\1\0\0\18goto_home_dir\1\0\1\17hijack_netrw\2\rdefaults\1\0\0\rvertical\1\0\0\1\0\1\vmirror\2\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\24\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\b\0005\5\v\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\f\0'\4\r\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\16\0'\4\17\0005\5\19\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\20\0'\4\21\0005\5\23\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\1\0\1\fnoremap\2!<cmd>ToggleTermToggleAll<CR>\14<Space>tt\1\0\1\fnoremap\2\1\0\1\fnoremap\2\25<cmd>3ToggleTerm<CR>\14<Space>t3\1\0\1\fnoremap\2\1\0\1\fnoremap\2\25<cmd>2ToggleTerm<CR>\14<Space>t2\1\0\1\fnoremap\2\6t\1\0\1\fnoremap\2\25<cmd>1ToggleTerm<CR>\14<Space>t1\6n\20nvim_set_keymap\bapi\bvim\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0\24colorscheme duskfox\17nvim_command\bapi\bvim\foptions\1\0\0\vstyles\1\0\0\1\0\3\rkeywords\tbold\rcomments\vitalic\ntypes\tbold\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\24\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\b\0005\5\v\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\f\0'\4\r\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\16\0'\4\17\0005\5\19\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\20\0'\4\21\0005\5\23\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\1\0\1\fnoremap\2!<cmd>ToggleTermToggleAll<CR>\14<Space>tt\1\0\1\fnoremap\2\1\0\1\fnoremap\2\25<cmd>3ToggleTerm<CR>\14<Space>t3\1\0\1\fnoremap\2\1\0\1\fnoremap\2\25<cmd>2ToggleTerm<CR>\14<Space>t2\1\0\1\fnoremap\2\6t\1\0\1\fnoremap\2\25<cmd>1ToggleTerm<CR>\14<Space>t1\6n\20nvim_set_keymap\bapi\bvim\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\fsources\1\0\0\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\5\1\0\v\0*\0B6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0034\4\6\0005\5\b\0>\5\1\0045\5\t\0>\5\2\0045\5\n\0>\5\3\0045\5\v\0>\5\4\0045\5\f\0>\5\5\4=\4\r\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\aB\a\1\2=\a\19\0069\a\14\0009\a\20\aB\a\1\2=\a\21\0069\a\14\0009\a\22\aB\a\1\2=\a\23\0069\a\14\0009\a\24\aB\a\1\2=\a\25\0069\a\14\0009\a\26\a5\t\29\0009\n\27\0009\n\28\n=\n\30\tB\a\2\2=\a\31\6B\4\2\2=\4\14\0035\4#\0006\5\0\0'\a \0B\5\2\0029\5!\0055\a\"\0B\5\2\2=\5$\4=\4%\3B\1\2\0016\1&\0009\1'\0015\2)\0=\2(\1K\0\1\0\1\4\0\0\fmenuone\rnoinsert\rnoselect\16completeopt\bopt\bvim\15formatting\vformat\1\0\0\1\0\1\rmaxwidth\0032\15cmp_format\flspkind\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nabort\n<C-l>\rcomplete\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\25show_current_context\2\25space_char_blankline\6 \31show_current_context_start\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\17border_style\tbold\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2!<Cmd>BufferLineCycleNext<CR>\n<Tab>\1\0\2\fnoremap\2\vsilent\2!<Cmd>BufferLineCyclePrev<CR>\f<S-Tab>\6n\20nvim_set_keymap\bapi\bvim\15highlights\20buffer_selected\1\0\0\1\0\1\14underline\2\foptions\1\0\0\1\0\5\tmode\ttabs\16color_icons\2\20show_close_icon\1\28show_buffer_close_icons\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2$<cmd>Telescope file_browser<CR>\14<Space>ff\6n\20nvim_set_keymap\bapi\bvim\17file_browser\19load_extension\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\6\0&\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0>\5\1\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0024\3\0\0=\3%\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\2\0\rfilename\16file_status\2\tpath\3\0\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3�\a\vwinbar\3�\a\ftabline\3�\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n?\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\24formatting_seq_sync\bbuf\blsp\bvim�\1\1\2\n\0\14\0\0219\2\0\0009\2\1\2\15\0\2\0X\3\16�6\2\2\0009\2\3\0029\2\4\2'\4\5\0005\5\t\0006\6\2\0009\6\3\0069\6\6\6'\b\a\0005\t\b\0B\6\3\2=\6\n\5=\1\v\0053\6\f\0=\6\r\5B\2\3\1K\0\1\0\rcallback\0\vbuffer\ngroup\1\0\0\1\0\1\nclear\2\vFormat\24nvim_create_augroup\16BufWritePre\24nvim_create_autocmd\bapi\bvim\31documentFormattingProvider\24server_capabilities�\4\1\0\n\0$\00056\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0029\3\a\0029\3\b\0039\3\t\3+\4\2\0=\4\n\0039\3\v\0009\3\f\0035\5\r\0=\1\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\5B\3\2\0019\3\19\0009\3\f\0035\5\20\0=\1\14\0055\6\26\0005\a\24\0005\b\22\0005\t\21\0=\t\23\b=\b\25\a=\a\27\6=\6\28\5B\3\2\0019\3\29\0009\3\f\0035\5\30\0=\1\14\5=\2\31\0055\6 \0=\6\16\5B\3\2\0019\3!\0009\3\f\0035\5\"\0=\1\14\5=\2\31\0055\6#\0=\6\16\5B\3\2\1K\0\1\0\1\2\0\0\thtml\1\0\0\thtml\1\2\0\0\tjson\17capabilities\1\0\0\vjsonls\rsettings\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\1\0\4\14underline\2\nsigns\2\17virtual_text\1\21update_in_insert\2\16sumneko_lua\bcmd\1\3\0\0\31typescript-language-server\f--stdio\14filetypes\1\4\0\0\15typescript\20typescriptreact\19typescript.tsx\14on_attach\1\0\0\nsetup\rtsserver\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\"<cmd>Telescope find_files<CR>\14<Space>fg\6n\20nvim_set_keymap\bapi\bvim\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\ftoggler\1\0\1\tline\acc\1\0\1\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\4\0\0\16sumneko_lua\fcss-lsp\rhtml-lsp\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-scrollbar
time([[Config for nvim-scrollbar]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14scrollbar\frequire\0", "config", "nvim-scrollbar")
time([[Config for nvim-scrollbar]], false)
-- Config for: telescope-media-files.nvim
time([[Config for telescope-media-files.nvim]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16media_files\19load_extension\14telescope\frequire\0", "config", "telescope-media-files.nvim")
time([[Config for telescope-media-files.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\3=\3\6\0025\3\a\0004\4\0\0=\4\5\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0029\0\14\0B\0\1\0029\1\15\0005\2\17\0=\2\16\1K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\23get_parser_configs\28nvim-treesitter.parsers\fautotag\1\0\1\venable\2\21ensure_installed\1\6\0\0\btsx\tjson\bcss\thtml\blua\vindent\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\1\0\2\17sync_install\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\r\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24<Cmd>PackerSync<CR>\14<Space>ps\1\0\2\fnoremap\2\vsilent\2\27<Cmd>PackerInstall<CR>\14<Space>pi\1\0\2\fnoremap\2\vsilent\2\27<Cmd>PackerCompile<CR>\14<Space>pc\6n\20nvim_set_keymap\bapi\bvim\0", "config", "packer.nvim")
time([[Config for packer.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n$\0\1\4\1\1\0\5-\1\0\0009\1\0\1\18\3\0\0B\1\2\1K\0\1\0\0�\vremove�\3\1\0\t\0\31\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\0035\4\20\0005\5\v\0005\6\17\0005\a\r\0009\b\f\0=\b\14\a3\b\15\0=\b\16\a=\a\18\6=\6\19\5=\5\3\4=\4\2\3B\1\2\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\21\0009\1\22\0019\1\23\1'\3\24\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0012\0\0�K\0\1\0\1\0\1\fnoremap\2!<cmd>Telescope help_tags<CR>\14<Space>fH\1\0\1\fnoremap\2 <cmd>Telescope oldfiles<CR>\14<Space>fh\6n\20nvim_set_keymap\bapi\bvim\1\0\0\fmapping\6i\1\0\0\n<C-d>\0\n<C-h>\1\0\0\18goto_home_dir\1\0\1\17hijack_netrw\2\rdefaults\1\0\0\rvertical\1\0\0\1\0\1\vmirror\2\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
