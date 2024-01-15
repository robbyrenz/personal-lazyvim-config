-- I'm not sure if I even need this file if I install the google java format via Mason
-- short-circuiting this operation to test something...
-- if true then
--   return {}
-- end

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
        markdown = { "markdownlint" },
      },
    },
  },
}
