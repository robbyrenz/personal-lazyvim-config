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
