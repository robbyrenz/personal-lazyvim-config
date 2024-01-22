return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disabling the below keymap in order to use LspSaga instead
    keys[#keys + 1] = { "K", false }
  end,
}
