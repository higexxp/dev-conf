-- ~/.config/nvim/lua/plugins/spec1.lua

return {
  -- Telescope (ファジーファインダー)
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- 高速化拡張（入っていれば使う）。make が無ければ自動でスキップ
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end,             desc = "Telescope: Find files" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end,              desc = "Telescope: Live grep" }, -- ripgrep 必要
      { "<leader>fb", function() require("telescope.builtin").buffers() end,                desc = "Telescope: Buffers" },
      { "<leader>fh", function() require("telescope.builtin").help_tags() end,              desc = "Telescope: Help tags" },
      { "<leader>fo", function() require("telescope.builtin").oldfiles() end,               desc = "Telescope: Recent files" },
      { "<leader>fs", function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "Telescope: Fuzzy search in buffer" },
    },
    config = function()
      require("telescope").setup{}
    end,
  },

  -- Treesitter (構文解析)
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          local ok = pcall(vim.treesitter.start)
          if ok then
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}

