-- packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(
  function(use)
    use { 'wbthomason/packer.nvim', opt = true }
    use { 'EdenEast/nightfox.nvim' }
    use { 'nvim-lualine/lualine.nvim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'romgrk/barbar.nvim' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    use { 'nvim-telescope/telescope-frecency.nvim' }
    use { 'tami5/sqlite.lua' }
    use { 'nvim-lua/plenary.nvim' }
    -- use { 'glepnir/dashboard-nvim' }
    use { 'jiangmiao/auto-pairs' }
    use { 'numToStr/Comment.nvim' }
    use 'andymass/vim-matchup'
    use 'windwp/nvim-ts-autotag'
    use {
      'VonHeikemen/fine-cmdline.nvim',
      requires = {
        {'MunifTanjim/nui.nvim'}
      }
    }
  end
)

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  }
}
require('nvim-ts-autotag').setup()
require('telescope').load_extension('frecency')
require('telescope').load_extension('file_browser')
vim.api.nvim_set_keymap('n', '<Space>ff', '<cmd>Telescope find_files<CR>',   { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>fh', '<cmd>Telescope oldfiles<CR>',   { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>te', '<cmd>Telescope<CR>',   { noremap = true })

require('Comment').setup( {
  padding = true,
  toggler = {
    line = 'cc',
  },
})

vim.api.nvim_command [[colorscheme duskfox]]

require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 1 }
    },
  },
})

require('mason').setup()
require('mason-lspconfig').setup_handlers({ 
  function(server)
    local opt = {
      capabilities = require('cmp_nvim_lsp').update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )
    }
  end 
})

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
  }),
  experimental = {
    ghost_text = true,
  },
})

require('indent_blankline').setup {
  space_char_blankline = ' ',
  show_current_context = true,
  show_current_context_start = true,
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators   = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- view
vim.wo.relativenumber = true
vim.wo.number = true

-- clipboard
vim.o.clipboard = 'unnamedplus'
vim.o.undofile = true
vim.o.swapfile = false

-- swap : and ; 
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('n', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('v', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('v', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('i', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('i', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('t', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('t', ':', ';', { noremap = true })

--edit
local tab_size = 2
vim.o.shiftwidth  = tab_size
vim.o.softtabstop = tab_size
vim.o.expandtab   = true
vim.o.autoindent  = true
vim.o.smartindent = true
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })
vim.api.nvim_set_keymap('n', '<CR>', '<Cmd>write<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})
vim.api.nvim_set_keymap('n', 'gk', 'k', {noremap = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'gj', 'j', {noremap = true})

-- reload init.lua
vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>source $MYVIMRC<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F6>', '<Cmd>edit $MYVIMRC<CR>',   { noremap = true })

