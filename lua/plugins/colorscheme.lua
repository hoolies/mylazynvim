return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  transparent = true,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("tokyonight").setup({
      style = "storm",
      styles = {
        comments = { italic = false }, -- Disable italics in comments
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl)
        hl.LineNr = { fg = "#29465B" }
        hl.CursorColumn = { fg = "#737CA1" }
        hl.CursorLineNr = { fg = "#FF00FF" }
        hl.IncSearch = { bg = "#FF00FF" }
      end,
    })
    vim.cmd([[colorscheme tokyonight-storm]])
  end,
}
