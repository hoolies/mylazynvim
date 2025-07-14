return {
  "stevearc/oil.nvim",
  -- Options
  opts = {},
  -- Optional dependencies
  dependencies = {
    "echasnovski/mini.icons",
    opts = {},
  },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
      },
      float = {
        enable = true,
        quit_on_focus_loss = true,
        -- Make the neovim window appear in the center of the screen
        open_win_config = function()
          local screen_w = vim.opt.columns:get()
          local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
          local window_w = screen_w * WIDTH_RATIO
          local window_h = screen_h * HEIGHT_RATIO
          local window_w_int = math.floor(window_w)
          local window_h_int = math.floor(window_h)
          local center_x = (screen_w - window_w) / 4
          local center_y = ((vim.opt.lines:get() - window_h) / 4) - vim.opt.cmdheight:get()
          return {
            border = "rounded",
            relative = "editor",
            row = center_y,
            col = center_x,
            width = window_w_int,
            height = window_h_int,
          }
        end,
      },
      preview = {
        min_width = 0.35,
        max_width = 0.45,
        min_height = 0.6,
        max_height = 0.8,
        border = "rounded",
      },
    })
  end,
}
