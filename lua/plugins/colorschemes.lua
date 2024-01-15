return {
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "rose-pine/neovim" },

  -- Configure LazyVim to load rose-pine on startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",

      -- Uncomment the below if you want LazyVim to load tokyonight
      -- colorscheme = "tokyonight",

      -- Uncomment the below if you want LazyVim to load tokyonight
      -- colorscheme = "catppuccin",
    },
  },
}
