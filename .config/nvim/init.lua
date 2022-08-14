vim.cmd("autocmd!")

-- encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- view
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes:2'
vim.opt.termguicolors = true

-- clipboard
vim.o.clipboard = 'unnamedplus'

-- tmporary file
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
vim.api.nvim_set_keymap('t', ';', ':', { noremap = true })

-- window
vim.api.nvim_set_keymap('n', 'gh', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', 'gj', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', 'gk', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', 'gl', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<Left>', '<C-w><', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', '<C-w>-', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>', '<C-w>+', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gn', '<Cmd>split<CR><C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gv', '<Cmd>vsplit<CR><C-w>w', { noremap = true, silent = true })

-- edit
local tab_size    = 2
vim.o.shiftwidth  = tab_size
vim.o.softtabstop = tab_size
vim.o.expandtab   = true
vim.o.autoindent  = true
vim.o.smartindent = true
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })
vim.api.nvim_set_keymap('n', '<CR>', '<Cmd>write<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'H', '0', { noremap = true })
vim.api.nvim_set_keymap('n', 'J', '}', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', '{', { noremap = true })
vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true })
vim.api.nvim_set_keymap('n', 'R', 'U', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-c><C-c>', '<Cmd>nohlsearch<CR>', { noremap = true })

-- tab
vim.api.nvim_set_keymap('n', 'gt', '<Cmd>tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gq', '<Cmd>quit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>tabnext<CR>', { noremap = true, silent = true })

-- terminal
vim.api.nvim_set_keymap('t', '<C-f>', '<C-\\><C-n>', { noremap = true, silent = true })

-- reload init.lua
vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>source $MYVIMRC<CR><Cmd>noh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F6>', '<Cmd>edit $MYVIMRC<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F7>', '<Cmd>PackerInstall<CR>', { noremap = true })

-- packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
end

require('packer').startup(
  function(use)

    use {
      'wbthomason/packer.nvim',
      opt = true
      -- config = function()
      -- end
    }

    use {
      'EdenEast/nightfox.nvim',
      config = function()
        vim.api.nvim_command [[colorscheme duskfox]]
      end
    }

    use {
      'nvim-lualine/lualine.nvim',
      config = function()
        require('lualine').setup {
          options = {
            icons_enabled        = true,
            theme                = 'auto',
            component_separators = { left = '', right = '' },
            section_separators   = { left = '', right = '' },
            disabled_filetypes   = {
              statusline = {},
              winbar = {},
            },
            ignore_focus         = {},
            always_divide_middle = true,
            globalstatus         = false,
            refresh              = {
              statusline = 1000,
              tabline = 1000,
              winbar = 1000,
            }
          },
          sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { {
              'filename',
              file_status = true,
              path = 0
            } },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
          },
          tabline = {},
          winbar = {},
          inactive_winbar = {},
          extensions = {}
        }
      end
    }

    use { 'kyazdani42/nvim-web-devicons' }

    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
        require('indent_blankline').setup {
          space_char_blankline = ' ',
          show_current_context = true,
          show_current_context_start = true,
        }
      end
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require('nvim-treesitter.configs').setup {
          highlight = {
            enable = true,
            disable = {},
          },
          indent = {
            enable = true,
            disable = {},
          },
          ensure_installed = {
            "tsx",
            "json",
            "css",
            "html",
            "lua"
          },
          autotag = {
            enable = true,
          },
        }
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
      end
    }

    use {
      'neovim/nvim-lspconfig',
      config = function()
        local on_attach = function(client, bufnr)
          -- format on save
          if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = vim.api.nvim_create_augroup("Format", { clear = true }),
              buffer = bufnr,
              callback = function() vim.lsp.buf.formatting_seq_sync() end
            })
          end
        end
        -- TypeScript
        require('lspconfig').tsserver.setup {
          on_attach = on_attach,
          filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
          cmd = { "typescript-language-server", "--stdio" }
        }
        -- Lua
        require('lspconfig').sumneko_lua.setup {
          on_attach = on_attach,
          cmd = {
            os.getenv("HOME") .. '/.lua-language-server/bin/lua-language-server',
            '-E',
            os.getenv("HOME") .. '/.lua-language-server/bin/main.lua',
          },
          settings = {
            Lua = {
              diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
              },
            },
          },
          virtual_text = false,
          signs = true,
          underline = true,
          update_in_insert = true
        }
      end
    }

    use {
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
          diagnostic_header = { " ", " ", " ", "ﴞ " },
          border_style = "bold",

        })
      end,
    }

    use {
      'williamboman/mason.nvim',
      config = function()
        require('mason').setup()
      end
    }

    use {
      'williamboman/mason-lspconfig.nvim',
      config = function()
        require('mason-lspconfig').setup {
          ensure_installed = {
            "sumneko_lua",
          },

        }
      end
    }

    use {
      'hrsh7th/nvim-cmp',
      config = function()

        local cmp = require('cmp')
        cmp.setup({

          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
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
            ['<CR>'] = cmp.mapping.confirm {
              behavior = cmp.ConfirmBehavior.Replace,
              select = true
            },
          }),
          formatting = {
            format = require('lspkind').cmp_format({
              maxwidth = 50
            })
          }
        })
        vim.opt.completeopt = {
          'menuone',
          'noinsert',
          'noselect'
        }
      end,
    }
    use { 'L3MON4D3/LuaSnip' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'tami5/sqlite.lua' }
    use { 'nvim-lua/plenary.nvim' }
    -- use { 'glepnir/dashboard-nvim' }
    use { 'jiangmiao/auto-pairs' }

    use {
      'numToStr/Comment.nvim',
      config = require('Comment').setup {
        padding = true,
        toggler = {
          line = 'cc',
        },
      }
    }
    use { 'andymass/vim-matchup' }
    use {
      'windwp/nvim-ts-autotag',
      config = function()
        require('nvim-ts-autotag').setup()
      end,
    }

    use {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end
    }

    use { 'MunifTanjim/prettier.nvim' }

    use {
      'akinsho/bufferline.nvim',
      tag = "v2.*",
      requires = 'kyazdani42/nvim-web-devicons',
      config = require('bufferline').setup {
        options = {
          mode = "tabs", -- set to "tabs" to only show tabpages instead
          always_show_bufferline = true,
          show_buffer_close_icons = false,
          show_close_icon = false,
          color_icons = true,
          numbers = "none",
          indicator_icon = '▎',
          modified_icon = '●',
          left_trunc_marker = '',
          right_trunc_marker = '',
          separator_style = "slant"
        },
        highlights = {
          buffer_selected = {
            underline = true,
          },
        },
      }
    }

    use {
      "akinsho/toggleterm.nvim",
      tag = 'v2.*',
      config = function()
        require("toggleterm").setup {
        }
        vim.api.nvim_set_keymap('n', '<F1>', '<cmd>1ToggleTerm<CR>', { noremap = true })
        vim.api.nvim_set_keymap('n', '<F2>', '<cmd>2ToggleTerm<CR>', { noremap = true })
        vim.api.nvim_set_keymap('n', '<F3>', '<cmd>3ToggleTerm<CR>', { noremap = true })
        vim.api.nvim_set_keymap('n', '<F4>', '<cmd>ToggleTermToggleAll<CR>', { noremap = true })
        vim.api.nvim_set_keymap('t', '<F4>', '<cmd>ToggleTermToggleAll<CR>', { noremap = true })
      end
    }

    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      config = function()
        require('telescope').setup {
          defaults = {
            layout_config = {
              vertical = { width = 1 }
            },
          },
          extensions = {
            file_browser = {
              theme = 'ivy',
              hijack_netrw = true
            }

          },
        }
        vim.api.nvim_set_keymap('n', '<Space>fh', '<cmd>Telescope oldfiles<CR>', { noremap = true })
      end
    }

    use {
      'nvim-telescope/telescope-file-browser.nvim',
      config = function()
        require('telescope').load_extension('file_browser')
        vim.api.nvim_set_keymap('n', '<Space>ff', '<cmd>Telescope file_browser<CR>', { noremap = true })
      end,
      requires = 'nvim-telescope/telescope.nvim',
    }

    use {
      'nvim-telescope/telescope-frecency.nvim',
      config = function()
        require('telescope').load_extension('frecency')
        vim.api.nvim_set_keymap('n', '<Space>fg', '<cmd>Telescope find_files<CR>', { noremap = true })
      end,
      requires = 'nvim-telescope/telescope.nvim',
    }

    use {
      'onsails/lspkind-nvim',
    }
    use {
      'jose-elias-alvarez/null-ls.nvim',
      config = function()
        require("null-ls").setup({
          sources = {
            require("null-ls").builtins.diagnostics.eslint,
            require("null-ls").builtins.completion.spell,
          },
        })
      end
    }


  end
)
