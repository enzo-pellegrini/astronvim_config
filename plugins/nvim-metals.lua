-- return {
--   "scalameta/nvim-metals",
--   ft = { "scala", "sbt", "java" },
--   requires = { "nvim-lua/plenary.nvim" },
--   config = function()
--     -- TODO: config
--   end,
--   setup = function()
--     vim.cmd [[
--       autocmd BufReadPre *.scala,*.sbt,*.java lua require('metals').initialize_or_attach(require("metals").bare_config())
--     ]]
--   end,
-- }
return {
  "scalameta/nvim-metals",
  ft = { "scala", "sbt", "java" },
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    local metals_config = require("metals").bare_config()

    metals_config.settings = {
      showImplicitArguments = true,
      showImplicitConversionsAndClasses = true,
      showInferredType = true,
      superMethodLensesEnabled = true,
    }

    metals_config.init_options.statusBarProvider = "on"
    metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

    require("metals").initialize_or_attach(metals_config)
  end,
}

