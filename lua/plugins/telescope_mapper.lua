return {
  {
    "gregorias/nvim-mapper",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/popup.nvim" },
    lazy = false,
    config = function()
      -- require("nvim-mapper").setup {}
      require("telescope").load_extension "mapper"
    end,
  },
}
