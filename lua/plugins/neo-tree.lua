return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          use_libuv_file_watcher = true,
          window = {
            mappings = {
              ["m"] = {
                "move",
                config = {
                  show_path = "relative" -- "none", "relative", "absolute"
                }
              }
            }
          }
        }
      })
    end
  }
}

