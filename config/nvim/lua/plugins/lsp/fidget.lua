-- NOTE: experimental
return {
  -- Lsp progress indicator
  "j-hui/fidget.nvim",
  event = "VeryLazy",
  opts = {
    notification = {
      window = {
        winblend = 0,
      },
    },
  },
}
