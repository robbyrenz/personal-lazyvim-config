return {
  {
    "nvim-telescope/telescope.nvim",
    -- change the default layout strategy and config
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
    keys = {
      -- disabling the keymap for showing lsp document symbols in order to use the LspSaga one instead
      { "<leader>ss", false },
      -- adding a substitute keymap for lsp document symbols
      { "<leader>cs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Goto Symbol (Telescope)" },
    },
  },
}
