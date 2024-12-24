-- disabling this file as snacks.nvim has its own zen mode plugin now, and its now the default one in LazyVim
-- ref: https://github.com/folke/snacks.nvim/blob/main/docs/zen.md
-- TODO: remove this file later once you are comfortable with the new zen mode plugin
if true then
  return {}
end

return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 120,
    },
  },
}
