return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      outline = {
        layout = "float",
        keys = {
          toggle_or_jump = "o",
          quit = "q",
          jump = "<CR>",
        },
      },
      finder = {
        default = "def+ref+imp",
        layout = "normal",
      },
      vim.keymap.set("n", "<leader>ss", "<cmd>Lspsaga outline<cr>", { desc = "Goto Symbol (Lspsaga)" }), -- TODO: this keymap is not working, its being overridden by fzf-lua's one, look into this later!
      vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" }),
      vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover" }),
      vim.keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "Definitions, References and Implementations" }),
      lightbulb = {
        enable = false,
      },
    })
  end,
}
