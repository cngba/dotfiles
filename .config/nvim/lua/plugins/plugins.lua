local colorscheme = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({ flavour = "mocha" })
    vim.cmd.colorscheme("catppuccin")
  end,
}

local statusbar = {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({ options = { theme = "auto" } })
  end,
}

-- Finally, return the list containing your variables
return {
  colorscheme,
  statusbar,
}
