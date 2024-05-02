return {
  {
	"catppuccin/nvim", name = "catppuccin", priority = 1000
  },
	--
  {
  "dundalek/lazy-lsp.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    {"L3MON4D3/LuaSnip", version = "v2.*"},
  },
  config = function()
    local lsp_zero = require("lsp-zero")
    local cmp = require("cmp")
    cmp.setup({
	    mapping = cmp.mapping.preset.insert({
		    ['<CR>'] = cmp.mapping.confirm({select = false}),
	    }),
    }) 
    lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false
      })
    end)

    require("lazy-lsp").setup {}
  end,
  },
	--
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    })
  end,
}
}



