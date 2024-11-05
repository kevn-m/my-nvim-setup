return {
  {
    'petertriho/nvim-scrollbar',
    config = function()
      require("scrollbar").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
    end
  }
}
