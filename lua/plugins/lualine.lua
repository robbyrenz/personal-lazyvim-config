-- I got the below config from: https://github.com/elliottminns/dotfiles/blob/main/.config/nvim/lua/plugins/lualine.lua
-- (on commit 6444794)
return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = { left = "", right = "" },
      },
    },
  },
}
