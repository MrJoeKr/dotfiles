return {
  -- Advanced Rust LSP Support (Handles rust-analyzer automatically)
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended version
    lazy = false, -- This plugin is already lazy-loaded against rust files
  },

  -- Manage Cargo.toml dependencies efficiently
  {
    "saecki/crates.nvim",
    tag = "stable",
    config = function()
      require("crates").setup()
    end,
  },
}
