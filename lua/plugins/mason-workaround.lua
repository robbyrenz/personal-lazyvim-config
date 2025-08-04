-- https://github.com/mason-org/mason-lspconfig.nvim/issues/543#issuecomment-2856464693 (where I first heard that this is a LazyVim issue, and a link to this workaround)
-- https://github.com/LazyVim/LazyVim/issues/6039#issuecomment-2856227817 (where I actually got this code snippet)
return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}

-- Note: there already is a PR that fixes this: https://github.com/LazyVim/LazyVim/pull/6053
-- But we will have to wait until Folke comes back from vacation hehe: https://github.com/LazyVim/LazyVim/pull/6053#issuecomment-3116580706
-- Once this breaking change with Mason is fixed, this file will no longer be needed
