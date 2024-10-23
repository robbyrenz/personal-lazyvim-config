return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        typescript = { "deno_fmt" },
        javascript = { "deno_fmt" },
        markdown = { "markdownlint" },
        java = { "google-java-format" },
      },
    },
  },
}
