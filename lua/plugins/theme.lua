return {
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local palette = require("kanagawa-paper.colors").setup().palette
      require("kanagawa-paper").setup({
        dimInactive = false,
        colors = {
          theme = {
            ui = {
              bg = palette.sumiInk4,
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
            FloatBorder = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
            FloatTitle = { bg = theme.ui.bg_p1, fg = theme.ui.fg, bold = true },

            -- LazyNormal = { bg = theme.ui.bg_p2, fg = theme.ui.fg },
            -- MasonNormal = { bg = theme.ui.bg_p2, fg = theme.ui.fg },
            -- NvimTreeNormal = { bg = theme.ui.bg, fg = theme.ui.fg },

            TelescopeTitle = { fg = theme.ui.special, bg = theme.ui.bg_p1, bold = true },
            TelescopePromptNormal = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
            TelescopeResultsBorder = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
            TelescopePreviewNormal = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
            TelescopePreviewBorder = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },

            -- Assign a static color to strings
            String = { fg = colors.palette.carpYellow, italic = true },
            -- theme colors will update dynamically when you change theme!
            SomePluginHl = { fg = colors.theme.syn.type, bold = true },

            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-paper",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.window = {
        completion = {
          border = "rounded",
        },
        documentation = {
          border = "rounded",
        },
      }
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
}
