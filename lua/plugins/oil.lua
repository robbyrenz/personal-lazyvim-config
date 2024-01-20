return {
  "stevearc/oil.nvim",
  keys = {
    {
      "-",
      "<CMD>Oil<CR>",
      desc = "Open parent directory",
    },
  },
  config = function()
    require("oil").setup({
      keymaps = {
        ["<BS>"] = "actions.parent",
      },
    })
  end,
}
