return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin"},
  -- { import = "astrocommunity.colorscheme.dracula", enabled = true },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.test.neotest" }, -- TODO: make it work with scala, jest, pytest...
  { import = "astrocommunity.motion.leap-nvim" },
}
