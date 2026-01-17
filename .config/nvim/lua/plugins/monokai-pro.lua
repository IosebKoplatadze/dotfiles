return {
  -- Add monokai-pro theme
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable italic comments
        italic_comments = true,
        -- Enable italic keywords
        italic_keywords = false,
        -- Enable italic functions
        italic_functions = false,
        -- Enable italic variables
        italic_variables = false,
        -- Enable bold
        bold = false,
      })
    end,
  },
  -- Configure LazyVim to load monokai-pro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
