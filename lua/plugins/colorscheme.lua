return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    lazy = false,
    transparent = true,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("tokyonight").setup({
        styles = {
          comments = { italic = false }, -- Disable italics in comments
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      vim.cmd.colorscheme("tokyonight-storm")

      -- Custom Colours
      vim.cmd([[highlight LineNr guifg=#29465B]])
      vim.cmd([[highlight CursorColumn guifg=#737CA1]])
      vim.cmd([[highlight CursorLineNr guifg=#FF00FF]])
      vim.cmd([[highlight IncSearch guibg=#FF00FF]])
    end,
  },
}
