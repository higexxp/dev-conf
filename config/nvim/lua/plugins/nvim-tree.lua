return {
  "nvim-tree/nvim-tree.lua",
  version = "*", -- 最新安定版を使用
  lazy = false,  -- 起動時にロード（trueにすると遅延ロード）
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, file icons
  },
  config = function()
    -- netrwを無効化（競合防止）
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- 24bitカラーを有効化
    vim.opt.termguicolors = true

    -- <leader>e でファイラー開閉
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

    -- nvim-tree の設定
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end,
}

