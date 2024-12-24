-- disabling my custom Telescope configuration because as of version 14.0.0 of LazyVim, fzf-lua is now the default one, and I would like to start using it :)
-- ref: https://github.com/LazyVim/LazyVim/releases/tag/v14.0.0
-- TODO: remove this file later once you are comfortable with fzf-lua
if true then
  return {}
end

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
