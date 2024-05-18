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
    opts = {
      lazy = false,
      priority = 1000,
    },
  },

  -- Configure LazyVim to load the below colorscheme on startup
  {
    "LazyVim/LazyVim",
    opts = {
      -- Uncomment the below if you want LazyVim to load gruvbox-material on startup
      -- colorscheme = "gruvbox-material",

      -- Uncomment the below if you want LazyVim to load rose-pine-moon on startup
      -- colorscheme = "rose-pine-moon",

      -- Uncomment the below if you want LazyVim to load tokyonight
      -- colorscheme = "tokyonight",

      -- Uncomment the below if you want LazyVim to load catppuccin-frappe on startup
      colorscheme = "catppuccin-frappe",
    },
  },
}
