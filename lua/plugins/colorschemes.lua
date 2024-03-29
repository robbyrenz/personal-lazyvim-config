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

  -- Configure LazyVim to load the below colorscheme on startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",

      -- Uncomment the below if you want LazyVim to load rose-pine-moon
      -- colorscheme = "rose-pine-moon",

      -- Uncomment the below if you want LazyVim to load tokyonight
      -- colorscheme = "tokyonight",

      -- Uncomment the below if you want LazyVim to load tokyonight
      -- colorscheme = "catppuccin",
    },
  },
}
