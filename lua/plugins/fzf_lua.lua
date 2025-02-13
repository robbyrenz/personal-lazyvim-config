return {
  "ibhagwan/fzf-lua",
  config = function()
    require("fzf-lua").setup({
      "default-title",
      keymap = {
        builtin = {
          ["<c-d>"] = "preview-page-down",
          ["<c-u>"] = "preview-page-up",
        },
      },
      winopts = {
        preview = {
          border = "noborder",
          layout = "vertical",
        },
      },
    })
  end,
}
