return {
  {
    "stevearc/oil.nvim",
    keys = {
      -- {
      -- Open in a separate buffer
      --   "-",
      --   "<CMD>Oil<CR>",
      --   desc = "Open parent directory",
      -- },
      {
        -- Open in a floating pane
        "-",
        function()
          require("oil").toggle_float()
        end,
        desc = "Open parent directory",
      },
    },
    config = function()
      require("oil").setup({
        keymaps = {
          ["<BS>"] = "actions.parent",
        },
        win_options = {
          signcolumn = "number",
        },
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
