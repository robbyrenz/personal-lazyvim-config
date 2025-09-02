return {
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "rose-pine/neovim" },
  { "sainnhe/gruvbox-material" },
  { "tanvirtin/monokai.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "cool",
    },
  },
  { "sainnhe/sonokai" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- I got the below config from "https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#borderless-telescope-example"
      require("tokyonight").setup({
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "marko-cerovac/material.nvim",
  },

  -- Configure LazyVim to load the below colorscheme on startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
}
